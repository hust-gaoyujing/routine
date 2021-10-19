
all: clean cp 


clean:
	rm -rf generated/*/*.fir generated/*/*.json

cp: 
	cp -rf $(PROJ_ROOT)/chisel_design/generated/$(module)/*.v $(PROJ_ROOT)/verilog_sim/$(module)/rtl/

#delete the folders: generated and test_run_dir
all_clean:
	rm -rf generated test_run_dir


