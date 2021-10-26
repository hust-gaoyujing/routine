

//import chisel3._
//import chisel3.util._

import gcd.DecoupledGcd
import uart._
import utils._

object DecoupledGcdGen extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new DecoupledGcd(4),Array("--target-dir", "generated/DecoupledGcdGen"))
}

object UartMain extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new axi4LiteUartTop(addrWidth = 32, dataWidth = 32),Array("--target-dir", "generated/uart"))
}

object busctrl extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new axi4Lite2Uart(),Array("--target-dir", "generated/uart"))
}

object popcount extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new popcount(width = 8),Array("--target-dir", "generated/utils/"))
}