#!/usr/bin/python3

import os
import re
import sys

if len(sys.argv) < 2:
    sys.exit("usage v2h.py verilog_file h_file")

vfile = sys.argv[1]
gvfile = sys.argv[2]

gvfile_name = os.path.basename(gvfile)


re_h = re.compile(r'\s(\d*)\'h')
re_d = re.compile(r'\s(\d*)\'d')
re_b = re.compile(r'\s(\d*)\'b([01]*)')

result_list = []

with open(vfile) as r_file:
    for line in r_file:
        line = line.replace("`", "#")
        m = re_h.search(line)
        # find 'h
        if m:
            bitwidth = m.group(1)
            line = line.replace(bitwidth +"'h", "0x")

        # find 'd
        m = re_d.search(line)
        if m:
            bitwidth = m.group(1)
            line = line.replace(bitwidth +"'d", "0x")

        # find 'b
        m = re_b.search(line)
        if m:
            bitwidth = m.group(1)
            bitvalue = int(m.group(2),2)
            replace_ori_str = bitwidth + "'b" + m.group(2)
            replace_new_str = "0x" + str(bitvalue)
            line = line.replace(replace_ori_str, replace_new_str)
        result_list.append(line)


with open(gvfile, 'w') as w_file:
    # write #ifndef 
    w_file.write("#ifndef %s\n" % gvfile_name.replace(".","_").upper())
    w_file.write("#define %s\n\n" % gvfile_name.replace(".","_").upper())
    
    w_file.writelines(result_list)

    w_file.write("\n#endif")





