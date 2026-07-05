TOP = 4x1_mux_tb

SRC = \
        rtl/4x1_mux.v \
        tb/4x1_mux_tb.v

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
