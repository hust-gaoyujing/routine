#! /usr/bin/perl 
system ("make SOC=ux607 BOARD=ux607_eval CORE=ux600 DOWMLOAD=ilm V=1 @ARGV"); 
if(@ARGV eq "dasm"){
system ( "cp uart_test.verilog /mnt/d/prj/routine/works/ux607_cct/works"); 
}

