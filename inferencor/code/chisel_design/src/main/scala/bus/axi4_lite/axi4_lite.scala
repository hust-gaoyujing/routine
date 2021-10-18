package bus.axi4_lite

import chisel3._
import chisel3.util._

//定义Axi Lite总线各个通道的接口信号
class Axi4LiteAddr(val addrWidth: Int) extends Bundle {
  val addr: UInt = UInt(addrWidth.W)
  val prot: UInt = UInt(3.W)
}

class Axi4LiteWriteData(val dataWidth: Int) extends Bundle {
  require(dataWidth == 32 || dataWidth == 64, "Axi4Lite dataWidth must be 32 or 64")
  val data = UInt(dataWidth.W)
  val strb = UInt((dataWidth / 8).W)
}

class Axi4LiteWriteResp extends Bundle {
  val resp = UInt(2.W)
}

class Axi4LiteReadData(val dataWidth: Int) extends Bundle {
  require(dataWidth == 32 || dataWidth == 64, "Axi4Lite dataWidth must be 32 or 64")
  val data = UInt(dataWidth.W)
  val resp = UInt(2.W)
}

class Axi4LiteSlave(val addrWidth: Int, val dataWidth: Int) extends Bundle {
  val readAddr = Flipped(Decoupled(new Axi4LiteAddr(addrWidth)))
  val readData = Decoupled(new Axi4LiteReadData(dataWidth))

  val writeAddr = Flipped(Decoupled(new Axi4LiteAddr(addrWidth)))
  val writeData = Flipped(Decoupled(new Axi4LiteWriteData(dataWidth)))
  val writeResp = Decoupled(new Axi4LiteWriteResp())
}

class Axi4LiteMaster(val addrWidth: Int, val dataWidth: Int) extends Bundle {
  val readAddr = Decoupled(new Axi4LiteAddr(addrWidth))
  val readData = Flipped(Decoupled(new Axi4LiteReadData(dataWidth)))

  val writeAddr = Decoupled(new Axi4LiteAddr(addrWidth))
  val writeData = Decoupled(new Axi4LiteWriteData(dataWidth))
  val writeResp = Flipped(Decoupled(new Axi4LiteWriteResp()))
}

abstract class Axi4LiteSlaveModule(val addrWidth: Int, val dataWidth: Int)
  extends MultiIOModule {
  val axi = IO(new Axi4LiteSlave(addrWidth, dataWidth))

  //enum 分别代表五个通道的序号
  val aw :: w :: b :: ar :: r :: Nil = Enum(5)
  //enum 分别代表RRESP,BRESP的类型，其中exokay在AXI-LITE不支持
  val okay :: exokay :: slverr :: decerr :: Nil = Enum(4)
  //Axi-lite总线信号
  //val addr = RegInit(VecInit(Fill(5,0.U(32.W))))
  //val data = RegInit(VecInit(Fill(5,0.U(32.W))))
  val addr = RegInit(VecInit(0.U(32.W), 0.U(32.W), 0.U(32.W), 0.U(32.W), 0.U(32.W)))
  val data = RegInit(VecInit(0.U(32.W), 0.U(32.W), 0.U(32.W), 0.U(32.W), 0.U(32.W)))
  val valid = RegInit(VecInit(false.B,false.B,false.B,false.B,false.B))
  val ready = RegInit(VecInit(false.B,false.B,false.B,false.B,false.B))
  val resp = RegInit(VecInit(false.B,false.B,false.B,false.B,false.B))

  // I/O Connections assignments
  axi.writeAddr.ready      :=   ready(aw)
  axi.writeData.ready      :=   ready(w)
  axi.writeResp.bits.resp  :=   resp(b)
  axi.writeResp.valid      :=   valid(b)
  axi.readAddr.ready       :=   ready(ar)
  axi.readData.bits.data   :=   data(r)
  axi.readData.bits.resp   :=   resp(r)
  axi.readData.valid       :=   valid(r)

  //握手信号
  //五个通道的握手信号，分别代表AW W B AR R通道的握手信号
  val handshake = RegInit(VecInit(false.B,false.B,false.B,false.B,false.B))

  //寄存器读写标志
  //两个标志信号在子类中作为寄存器读写的使能信号，需要重点关注
  //当writeAddr和writeData通道的握手信号都产生后可以写寄存器
  //当readAddr通道的握手信号产生后可以读寄存器
  val slv_reg_rden = WireInit(false.B)
  val slv_reg_wren = WireInit(false.B)

  slv_reg_wren := handshake(aw) && handshake(w)
  slv_reg_rden := handshake(ar)

  // AW通道
  when(axi.writeAddr.valid && !handshake(aw)) {
    ready(aw) := true.B
    addr(aw) := axi.writeAddr.bits.addr  // Implement io_awaddr latching
  } .otherwise {
    ready(aw) := false.B
  }

  when(axi.writeAddr.valid && !handshake(aw)) {
    handshake(aw) := true.B
  } .elsewhen(handshake(aw) && handshake(w)) {
    handshake(aw) := false.B
  }

  // W通道
  val mask = Cat( Fill(7,axi.writeData.bits.strb(3)),
                  Fill(7,axi.writeData.bits.strb(2)),
                  Fill(7,axi.writeData.bits.strb(1)),
                  Fill(7,axi.writeData.bits.strb(0)))

  when(axi.writeData.valid && !handshake(w)) {
    ready(w) := true.B
    data(w) := axi.writeData.bits.data & mask // Implement io_wdata latching
  } .otherwise {
    ready(w) := false.B
  }

  when(axi.writeData.valid && !handshake(w)) {
    handshake(w) := true.B
  } .elsewhen(handshake(aw) && handshake(w)) {
    handshake(w) := false.B
  }

  // B通道
  when(slv_reg_wren) {
    valid(b) := true.B
    //resp默认为okay,如果有需要可以在子类中进行override
    resp(b) := okay
  } .elsewhen(axi.writeResp.valid && axi.writeResp.ready) {
    valid(b) := false.B
  }

  // AR通道
  when(axi.readAddr.valid && !handshake(ar)) {
    ready(ar) := true.B
    addr(ar) := axi.readAddr.bits.addr // Implement io_awaddr latching
  } .otherwise {
    ready(ar) := false.B
  }

  when(axi.readAddr.valid && !handshake(ar)) {
    handshake(ar) := true.B
  } .otherwise {
    handshake(ar) := false.B
  }

  // R通道
  when(handshake(ar)) {
    valid(r) := true.B
    //resp默认为okay,如果有需要可以在子类中进行override
    resp(r) := okay
  } .elsewhen( axi.readData.valid && axi.readData.ready) {
    valid(r) := false.B
  }

}