# CSE x25 Lab 1

# If you have the tools  installed in a non-standard path,
# you can override these to specify the path to the executable.
NEXTPNR ?= nextpnr-ice40
YOSYS ?= yosys
ICEPROG ?= iceprog
ICEPACK ?= icepack
ICETIME ?= icetime

PCF_PATH = ../../provided_modules/icebreaker.pcf
prog: top.bin
	$(ICEPROG) $<

top.json: top.sv $(SYNTH_SOURCES)
	$(YOSYS) -ql top.yslog -p 'synth_ice40 -top top -json $@' top.sv $(SYNTH_SOURCES)

top.asc: top.json $(PCF_PATH)
	$(NEXTPNR) -ql top.nplog --up5k --package sg48 --freq 12 --asc $@ --pcf $(PCF_PATH) --json $< --top top

top.bin: top.asc top.asc
	$(ICEPACK) $< $@

top.rpt: top.asc
	$(ICETIME) -d up5k -c 12 -mtr $@ $<

fpga-clean:
	rm -rf *.bin
	rm -rf *.rpt
	rm -rf *.asc
	rm -rf *.json
	rm -rf *.yslog
	rm -rf *.nplog

fpga-help:
	@echo "  prog: Build the FPGA program (bitstream) and run it"

fpga-vars-help:
	@echo "    YOSYS: Override this variable to set the location of your yosys executable."
	@echo "    NEXTPNR: Override this variable to set the location of your nextpnr executable."
	@echo "    ICEPROG: Override this variable to set the location of your Icebreaker Programmer executable."
	@echo "    ICEPACK: Override this variable to set the location of your icepack executable."
	@echo "    ICETIME: Override this variable to set the location of your icetime executable."


clean: fpga-clean
targets-help: fpga-help
vars-help: fpga-vars-help

.PHONY: prog fpga-help fpga-clean fpga-vars-help
