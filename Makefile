all: par seq
par:
	gcc -O3 -o bsp_mcl bsp_mcl.c -IMondriaan3.11/src/include -LMondriaan3.11/src/lib -lMondriaan3 -DMCBSP_COMPATIBILITY_MODE BSPedupack1.01/compat-libmcbsp1.0.1.a -pthread -lm -lrt -Wno-unused-result
seq:
	gcc -O3 -o bsp_mcl_seq bsp_mcl_seq.c -IMondriaan3.11/src/include -LMondriaan3.11/src/lib -lMondriaan3 -lm