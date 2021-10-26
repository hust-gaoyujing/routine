package utils

import chisel3._
import chisel3.util._
import math.log

//popcount_4：计算一个4-bit数据中有多少个“1”
object contain {
  def apply(seq: Seq[Int], n: UInt) = {
    seq.map( n === _.asUInt()).reduce(_ || _).asBool()
  }
}

class popcount_4 extends Module {
  val io = IO(new Bundle() {
    val in = Input(UInt(4.W))
    val out = Output(UInt(3.W))
  })
  val zero = Seq(0)
  val one = Seq(1, 2, 4, 8)
  val two = Seq(3, 5, 6, 9, 10, 12)
  val three = Seq(7, 11, 13, 14)
  val four = Seq(15)

  when( contain(zero, io.in)) {   io.out := 0.U
  } .elsewhen( contain(one, io.in) ) { io.out := 1.U
  } .elsewhen( contain(two, io.in)) { io.out := 2.U
  } .elsewhen( contain(three, io.in)) { io.out := 3.U
  } .elsewhen( contain(four, io.in)) { io.out := 4.U
  } .otherwise(io.out := 0.U)

}

class popcount(width: Int) extends Module{
  val io = IO(new Bundle() {
    val in = Input(UInt(width.W))
    val out = Output(UInt(math.log(width).toInt.W))
  })
  //例化多个popcount_4模块
  val pop_cnt_4 = VecInit(Seq.fill(width/4)(Module(new popcount_4).io))
  for(i <- 0 until width/4) {
    pop_cnt_4(i).in := io.in(4*i+3, 4*i)
  }

  io.out := 0.U

}