# <help>
.PHONY: help
help:
	@echo 'make all    - dec + rec'
	@echo 'make dec    - decompile examples'
	@echo 'make rec    - recompile examples'
	@echo 'make run    - run examples'
	@echo 'make clean  - clean up'
	@echo 'make help   - this screen'
# </help>

# <all>
.PHONY: all
all: dec rec
# </all>

# <dec>
.PHONY: dec
dec:
	cp -v impl/examples/csrc/fib.c fib.original.c
	cd impl && ./run-x64-ir2c.sh fib.elf.x64 > ../fib.elf.x64.decomp.c
	cd impl && ./run-x64-ir2c.sh fib.elf.x64.O3 > ../fib.elf.x64.O3.decomp.c
	cd impl && ./run-x64-ir2c.sh fib.elf.x64.recomp > ../fib.elf.x64.recomp.decomp.c
	cd impl && ./run-x64-ir2c.sh fib.elf.x64.recomp.recomp > ../fib.elf.x64.recomp.recomp.decomp.c
# </dec>

# <rec>
.PHONY: rec
rec:
	gcc fib.elf.x64.decomp.c -o fib.elf.x64.decomp.recomp.bin -Wall
	gcc fib.elf.x64.O3.decomp.c -o fib.elf.x64.O3.decomp.recomp.bin -Wall
	gcc fib.elf.x64.recomp.decomp.c -o fib.elf.x64.recomp.decomp.recomp.bin -Wall
	gcc fib.elf.x64.recomp.recomp.decomp.c -o fib.elf.x64.recomp.recomp.decomp.recomp.bin -Wall
# </rec>

# <run>
.PHONY: run
run:
	time -p impl/examples/fib.elf.x64.O3/fib.elf.x64.O3 40
	time -p ./fib.elf.x64.O3.decomp.recomp.bin 40
	time -p impl/examples/fib.elf.x64/fib.elf.x64 40
	time -p ./fib.elf.x64.decomp.recomp.bin 40
	time -p ./fib.elf.x64.recomp.decomp.recomp.bin 40
	time -p ./fib.elf.x64.recomp.recomp.decomp.recomp.bin 40
# </run>

# <clean>
.PHONY: clean
clean:
	rm -f fib*.c fib*.bin
# </clean>
