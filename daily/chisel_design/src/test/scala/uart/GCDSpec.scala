// See README.md for license details.

package uart

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class axi4LiteUartTopTest extends FreeSpec with ChiselScalatestTester {

  "AXI-LITE to UART must write or read registers of uart accurately" in {
    test(new axi4LiteUartTop(addrWidth = 32, dataWidth = 32)) { dut =>
      def stat_reg = "h80000000".U
      def ctrl_reg = "h80000004".U
      def data_reg = "h80000008".U

      def wait(satisfy: Boolean) = {
        while(satisfy) { dut.clock.step(1) }
      }

      def read(addr: UInt) = {
        dut.io.axi.readAddr.valid.poke(true.B)
        dut.io.axi.readAddr.bits.addr.poke(addr)
        wait(dut.io.axi.readAddr.ready.peek().litToBoolean)
        dut.io.axi.readAddr.valid.poke(false.B)
        dut.io.axi.readAddr.bits.addr.poke(0.U)
        dut.clock.step(1)
      }

      def write(addr: UInt, data: UInt): Unit ={
        dut.io.axi.writeAddr.valid.poke(true.B)
        dut.io.axi.writeAddr.bits.addr.poke(addr)
        dut.io.axi.writeData.valid.poke(true.B)
        dut.io.axi.writeData.bits.data.poke(data)
        wait(dut.io.axi.writeAddr.ready.peek().litToBoolean && dut.io.axi.writeData.ready.peek().litToBoolean)
        dut.clock.step(1)
      }

      dut.reset.poke(true.B)
      dut.clock.step(3)
      dut.reset.poke(false.B)
      dut.clock.step(5)
      dut.io.rxd.poke(true.B)
      println("ready to read stat_reg")
      //read(stat_reg)
      dut.io.axi.readAddr.valid.poke(true.B)
      dut.io.axi.readAddr.bits.addr.poke(stat_reg)
      while(!dut.io.axi.readAddr.ready.peek().litToBoolean){ dut.clock.step(1) }
      dut.io.axi.readAddr.valid.poke(false.B)
      dut.io.axi.readAddr.bits.addr.poke(0.U)
      dut.clock.step(1)
      println("succeed to read")
      if(dut.io.axi.readData.bits.data.peek()(0).litToBoolean){
        dut.clock.step(1)
      }

      dut.clock.step(10)
    }

  }
}

