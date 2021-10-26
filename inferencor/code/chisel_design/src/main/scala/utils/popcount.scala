package utils

import chisel3._
import chisel3.util._

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
  //val seq = VecInit(Seq.fill(4)(false.B))
  //io.out := seq.zipWithIndex.map{
  //  case (n, index) => io.in(index.U).asUInt()
  //}.reduce(_ +& _)
}

class popcount(width: Int) extends Module{
  val io = IO(new Bundle() {
    val in = Input(UInt(width.W))
    val out = Output(UInt(log2Ceil(width+1).W))
  })
  //例化多个popcount_4模块
  val pop_cnt_4 = VecInit(Seq.fill(width/4)(Module(new popcount_4).io))
  pop_cnt_4.map(_.in).zipWithIndex.foreach{ case (in, index) =>
    in := io.in(index*4+3, index*4)
  }

  io.out := pop_cnt_4.map(_.out).reduce(_ +& _)

}
