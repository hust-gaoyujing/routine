#!/bin/bash
#all_pass=1
ok=`grep "Test Finish" $1 | wc -l`
if [ $ok -ne "1" ];
then 
#    all_pass=0
  err=`grep "Error" $1 | wc -l`
  if [ $err -ne "1" ];
  then 
      echo -e "NOT_FINISHED $1"
  else
      echo -e "ERROR $1"
  fi
else
    #test_fails=`grep 'TEST_FAIL : *[0-9]*' $1  | sed 's/.*TEST_FAIL : *\([0-9]*\).*/\1/g'`
    test_passes=`grep "TEST_PASS" $1 | wc -l`
    res=`expr $test_passes + 0`
    if [ $res -ne 0 ];
    then 
        echo -e "PASS $1";
    else 
#        all_pass=0
        echo -e "FAIL $1";
    fi
fi

#if [ $all_pass != 1 ];
#then
#    echo "cct regression failed"
#    echo "see run/regress.res to see detail information"
#else
#    echo "congratulations"
#    echo "cct regression pass"
#fi
