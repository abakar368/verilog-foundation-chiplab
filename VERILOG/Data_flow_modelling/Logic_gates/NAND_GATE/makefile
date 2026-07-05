TOP = nand_gate_tb

SRC = \
        rtl/nand_gate.v \
        tb/nand_gate_tb.v

VCS = vcs -full64 -sverilog
VCS_OPTS = -debug_access+all -kdb -l compile.log

compile:
	$(VCS) $(VCS_OPTS) $(SRC)

run:
	./simv -l run.log

gui:
	verdi -sv -f filelist.f -top $(TOP) &

wave:
	verdi -ssf dump.fsdb &

all: compile run wave

clean:
	rm -rf \
		csrc \
		simv \
		simv.daidir \
		verdiLog \
		novas* \
		*.log \
		*.vpd \
		*.fsdb \
		*.key \
		DVEfiles
