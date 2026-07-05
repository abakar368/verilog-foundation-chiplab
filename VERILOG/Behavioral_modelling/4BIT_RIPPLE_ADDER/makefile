TOP = ripple_adder_tb

SRC = \
	rtl/ripple_adder.v \
	tb/ripple_adder_tb.v

VCS = vcs -full64 -sverilog
VCS_OPTS = -debug_access+all -kdb -l compile.log

compile:
	$(VCS) $(VCS_OPTS) $(SRC)

run:
	./simv -l run.log

gui:
	verdi -sv -f filelist.f -top $(TOP) &

waves:
	verdi -ssf dump.fsdb &

all: compile run waves

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
