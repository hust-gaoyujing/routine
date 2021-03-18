rm isa -r
cp isa_origs isa -r
rm isa/macros/scalar/* 

for i in `ls isa_origs/macros/scalar`;
do
    python pre_h_ext.py -c ../vsim/ux607_defines.h -i isa_origs/macros/scalar/$i -o isa/macros/scalar/$i
done


rm env -rf
cp env_origs env -r

for i in p pm pt v;
do
    # process link.ld.S
    rm env/$i/link.ld.S
    gcc -E -I../vsim env_origs/$i/link.ld.S -o env/$i/link.ld && sed -i '/#/d' env/$i/link.ld

    # process head file
    for j in `ls -1 env_origs/$i/ | grep .h`
    do
        python pre_h_ext.py -c ../vsim/ux607_defines.h -i env_origs/$i/$j -o env/$i/$j
    done
done

