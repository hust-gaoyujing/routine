package uart

import chisel3._
import chisel3.util._
import bus.axi4_lite._


class axi4Lite2Uart extends Axi4LiteSlaveModule(addrWidth = 32, dataWidth = 32) {
  val io = IO(new Bundle {
  //状态寄存器信号
    val tx_busy = Input(Bool())
    val rx_busy = Input(Bool())
    val parity_error = Input(Bool())
    //控制寄存器信号
    val clk_en = Output(Bool())
    val parity_en = Output(Bool())
    val parity_even = Output(Bool())
    val div = Output(UInt(16.W))
    //数据寄存器
    val data_reg_tx = Output(UInt(8.W))
    val data_reg_rx = Input(UInt(8.W))
    //读写数据寄存器标志信号
    //val rd_data_flag = Output(Bool())
    val tx_start = Output(Bool())
  })
  
  //enum 分别表示寄存器的字偏移地址
  val stat_offset :: ctrl_offset :: data_offset :: Nil = Enum(3)
  //寄存器声明
  val stat_reg = RegInit(0.U(32.W))
  val ctrl_reg = RegInit("h7".U(32.W))
  val data_reg = RegInit("hff".U(32.W))

  stat_reg := Cat(0.U(29.W),io.parity_error,io.rx_busy,io.tx_busy)
  //Cat(io.div,0.U(13.W),io.parity_even,io.parity_en,io.clk_en) := ctrl_reg
  io.clk_en := ctrl_reg(0)
  io.parity_en := ctrl_reg(1)
  io.parity_even := ctrl_reg(2)
  io.div := ctrl_reg(31,16)

  //写寄存器
  when(slv_reg_wren) {
    switch(addr(aw)(3,2)) {
      is(ctrl_offset) { ctrl_reg := data(w) }
      is(data_offset) { data_reg := data(w) }
    }
  }

  //读寄存器
  when(slv_reg_rden) {
    switch(addr(ar)(3,2)) {
      is(stat_offset) { data(r) := stat_reg }
      is(ctrl_offset) { data(r) := ctrl_reg }
      is(data_offset) { data(r) := io.data_reg_rx }
    }
  }

  //wr_data_flag 当writeResp通道握手成功且data_reg被写入，则告知tx模块有新数据进入，可以开始发送
  io.tx_start := Mux( axi.writeResp.valid && axi.writeResp.ready &&
    (addr(aw)(3,2) === data_offset) , 1.U, 0.U)
  //data_reg_tx  将总线写入的数据送往tx模块
  io.data_reg_tx := data_reg

}

class baudGen extends Module {
  val io = IO(new Bundle() {
    val clk_en = Input(Bool())
    val div = Input(UInt(16.W))

    val tx_data_sample = Output(Bool())
    val rx_data_sample = Output(Bool())
  })
  //采样时钟输出寄存器
  val sample_clk_reg = RegInit(false.B)
  val baud_clk_reg = RegInit(false.B)

  //计数器声明
  //这种apply方法下Counter.value不可以用作条件判断;且其中的方法都要提前声明
  //val (sampleCntValue, sampleCntWrap) = Counter(0 to 65535,
  //  io.clk_en,
  //  io.clk_en && (sampleCntValue === io.div) || !io.clk_en)

  val sampleCnt = Counter(65535)
  val (baudCntValue, baudCntWrap) = Counter(0 to 15,
    io.clk_en && sample_clk_reg,
    !io.clk_en)

  def sampleCntIs(n: UInt): Bool = sampleCnt.value === n

  //采样时钟输出
  io.rx_data_sample := sample_clk_reg
  io.tx_data_sample := baud_clk_reg

  //===================  GET SAMPLE_CLK BY DIV SYSTEM_CLK  ========================//
  //divide clk to get sample_clk
  when(io.clk_en && sampleCntIs(io.div)) {
    sampleCnt.reset()
    sample_clk_reg := true.B
  }.otherwise {
    sampleCnt.inc()
    sample_clk_reg := false.B
  }

  //===================  GET BAUD_CLK BY DIV SAMPLE_CLK  ========================//
  //sample_clk's frequence divide sample will get baud_clk
  when(io.clk_en && sample_clk_reg && baudCntWrap) {
    baud_clk_reg := true.B
  }.otherwise {
    baud_clk_reg := false.B
  }

}

class uartTx extends Module {
  val io = IO(new Bundle() {
    val tx_data_sample = Input(Bool())
    val parity_en = Input(Bool())
    val parity_even = Input(Bool())
    val tx_start = Input(Bool())
    val data_reg_tx = Input(UInt(8.W))

    val tx_busy = Output(Bool())
    val txd = Output(Bool())
  })
  //状态机声明
  val idle :: start :: data :: stop :: Nil = Enum(4)
  val tx_state = RegInit(idle)
  val tx_next_state = RegInit(idle)
  def txStateIs(n: UInt): Bool = tx_state === n
  val tx_busy_reg = RegInit(false.B)

  when(io.tx_start) { tx_busy_reg := true.B
  } .elsewhen(txStateIs(stop) && io.tx_data_sample) { tx_busy_reg := false.B }

  //计数器声明
  val (txCntValue,txCntWrap) = Counter(0 to 8,
        io.tx_data_sample && txStateIs(data),
        io.tx_data_sample && txStateIs(stop))
  def txCntIs(n: Int): Bool = txCntValue === n.U

  //奇偶校验相关
  val hasEvenParity = io.parity_en && io.parity_even
  val hasOddParity = io.parity_en && !io.parity_even

  //状态机翻转
  when(io.tx_data_sample) {
    switch(tx_state) {
      is(idle) {
        when(tx_busy_reg) { tx_state := start }
      }
      is(start) {
        tx_state := data
      }
      is(data) {
        when((txCntIs(7) && !io.parity_en) || txCntIs(8)) { tx_state := stop }
      }
      is(stop) {
        tx_state := idle
      }
    }
  }

  //状态机中间态
  val txd_data = RegInit("hff".U(8.W))
  val even_parity = RegInit(false.B)
  val txd_out_wire = WireInit(true.B)
  when(io.tx_data_sample){
    switch(tx_state) {
      is(idle) {
        even_parity := false.B
      }
      is(start) {
        txd_data := io.data_reg_tx
      }
      is(data) {
        //tx计数器值小于8时，移位寄存器每个时钟右移一位，奇偶校验校验一位
        when(!txCntValue(3)) {
          txd_data := txd_data >> 1.U
          even_parity := even_parity ^ txd_data(0)
        }
      }
      is(stop) {  }
    }
  }

  //txd输出（组合逻辑）
  switch(tx_state) {
    is(idle) {
      txd_out_wire := true.B
    }
    is(start) {
      txd_out_wire := false.B
    }
    is(data) {
      when(txCntIs(8) && hasEvenParity) {
        txd_out_wire := even_parity
      } .elsewhen(txCntIs(8) && hasOddParity) {
        txd_out_wire := !even_parity
      } .otherwise {
        txd_out_wire := txd_data(0)
      }
    }
    is(stop) {
      txd_out_wire := true.B
    }
  }

  //接口输出信号赋值
  io.txd := txd_out_wire
  io.tx_busy := tx_busy_reg
}

class uartRx extends Module {
  val io = IO(new Bundle() {
    val rx_data_sample = Input(Bool())
    val parity_en = Input(Bool())
    val parity_even = Input(Bool())
    val rxd = Input(Bool())

    val rx_busy = Output(Bool())
    val parity_error = Output(Bool())
    val data_reg_rx = Output(UInt(8.W))
  })

  //状态机声明
  val idle :: data :: stop :: Nil = Enum(3)
  val rx_state = RegInit(idle)
  def rxStateIs(n: UInt): Bool = rx_state === n

  //计数器声明
  val (sampleCntValue,sampleCntwrap) = Counter(0 to 15,
    io.rx_data_sample,
    io.rx_data_sample && ((rxStateIs(idle) && io.rxd) || (rxStateIs(stop) && !io.rxd)))
  def sampleCntIs(n: Int): Bool = sampleCntValue === n.U

  val (rxCntValue,rxCntwrap) = Counter(0 to 8, io.rx_data_sample && rxStateIs(data) && sampleCntIs(15), io.rx_data_sample && rxStateIs(idle))
  def rxCntIs(n: Int):Bool = rxCntValue === n.U

  //状态机翻转
  when(io.rx_data_sample) {
    switch(rx_state) {
      is(idle) {
        when(sampleCntIs(15)) {rx_state := data}
      }
      is(data) {
        when(sampleCntIs(15) && ((rxCntIs(7) && !io.parity_en) || rxCntIs(8))) {rx_state := stop}
      }
      is(stop) {
        when(sampleCntIs(8)) {rx_state := idle}
      }
    }
  }
  //====================  状态机输出  ======================
    //表决信号
  val tmp = RegInit(VecInit(true.B, true.B, true.B))
  val vote = RegInit(true.B)
  //for(i <- 7 to 10) {
  //  when(sampleCntIs(10)) { vote := tmp.reduce(_ ^ _)
  //  } .elsewhen(sampleCntIs(i)) { tmp((i - 7)) := io.rxd }
  //}
  when(sampleCntIs(7)) {
    tmp(0) := io.rxd
  } .elsewhen(sampleCntIs(8)) {
    tmp(1) := io.rxd
  } .elsewhen(sampleCntIs(9)) {
    tmp(2) := io.rxd
  } .elsewhen(sampleCntIs(10)) {
    vote := tmp.reduce(_ ^ _)
  }

  //奇偶校验
  val parity_result = RegInit(false.B)
  val hasEvenParity = io.parity_en && io.parity_even
  val hasOddParity = io.parity_en && !io.parity_even

  when(io.rx_data_sample) {
    when(rxStateIs(idle)) { parity_result := false.B
    } .elsewhen(rxStateIs(data) && sampleCntIs(15) && io.parity_en) { parity_result := parity_result ^ vote }
  }

  //保存rxd输入数据
  val rxd_out_reg = RegInit("hff".U(8.W))
  when(io.rx_data_sample) {
    //when(rxStateIs(data) && (rxCnt.value < 8.U) && sampleCntIs(15)) { rxd_out_reg := Cat(vote, rxd_out_reg(7,1)) }
    when(rxStateIs(data) && !rxCntValue(3) && sampleCntIs(15))  { rxd_out_reg := Cat(vote, rxd_out_reg(7,1)) }
  }

  //接口信号输出
  io.rx_busy := rx_state =/= idle
  io.data_reg_rx := rxd_out_reg
  io.parity_error := rxStateIs(stop) && ((hasEvenParity && parity_result) | (hasOddParity && !parity_result))
}

class axi4LiteUartTop(addrWidth: Int, dataWidth: Int) extends Module {
  val io = IO(new Bundle() {
    val axi = new Axi4LiteSlave(addrWidth, dataWidth)
    val rxd = Input(Bool())
    val txd = Output(Bool())
  })


  val baud = Module(new baudGen())
  val tx = Module(new uartTx())
  val rx = Module(new uartRx())
  val bus = Module(new axi4Lite2Uart())
  //顶层信号
  io.axi <> bus.axi
  io.rxd <> rx.io.rxd
  io.txd <> tx.io.txd
  //baud模块信号
  baud.io.clk_en <> bus.io.clk_en
  baud.io.div <> bus.io.div
  baud.io.tx_data_sample <> tx.io.tx_data_sample
  baud.io.rx_data_sample <> rx.io.rx_data_sample
  //tx模块信号
  tx.io.parity_en     <>    bus.io.parity_en
  tx.io.parity_even   <>    bus.io.parity_even
  tx.io.tx_start      <>    bus.io.tx_start
  tx.io.data_reg_tx   <>    bus.io.data_reg_tx
  tx.io.tx_busy       <>    bus.io.tx_busy
  ////rx模块信号
  rx.io.parity_en     <>    bus.io.parity_en
  rx.io.parity_even   <>    bus.io.parity_even
  rx.io.rx_busy       <>    bus.io.rx_busy
  rx.io.parity_error  <>    bus.io.parity_error
  rx.io.data_reg_rx   <>    bus.io.data_reg_rx

}