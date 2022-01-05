GHLD=$(shell command -v ghdl)
FLAGS="--std=08"

all:
	ghdl -a $(FLAGS) bldc_drv.vhd bldc_drvTb.vhd
	ghdl -e $(FLAGS) bldc_drvTb
	ghdl -r $(FLAGS) bldc_drvTb --wave=wave.ghw --stop-time=800ms
