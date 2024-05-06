### emdec
emulating decompiler

### What's this?
A minimal decompiler which produces recompilable C source.

### How's that achieved?
objdump is used for disassembly, and a pipeline of awk scripts with their shell
wrappers are used to perform the decompilation. Code analysis is kept to the
minimum needed to figure out switch statements and function arguments on library
boundaries. With the exception of jump tables, all instructions are translated
to equivalent C statements. In this sense it's more of an assembly to C
compiler, rather than something which reverses the process of compilation.

### How is it emulating?
It replicates the underlying architecture state and behavior. That is, it
creates global C structs representing the CPU registers which are then used to
replicate the original instructions of the program. This allows you to skip the
deciphering of assembly constructs and compiler optimizations back into human
source. Since the instructions work like they would at the assembly level, so
would the whole program. The decompiler is agnostic about what the instructions
and data accesses mean at a higher level.

### What code analysis is performed?
Basic block detection, CFG generation, def-use per instruction, switch statement
heuristics, library calls argument detection.

### What are the limitations?
The decompiler is just enough to decompile a Fibonacci program written in C
which uses recursion, static and dynamic memory memoization, a loop, and a
big switch. Supported are only x64, int registers, no more than the necessary
instructions, the int register arguments/return values of the x64 Linux calling
convention.

### What's the performance of the resulting recompiled program?
Very often an order of magnitude slower. E.g.

Original program:
```
$ time -p impl/examples/fib.elf.x64/fib.elf.x64 40
recursive 102334155
static    102334155
dynamic   102334155
loop      102334155
switch    102334155
real 0.63
user 0.63
sys 0.00
```

Recompiled is about 10 slower:
```
$ time -p ./fib.elf.x64.decomp.recomp.bin 40
recursive 102334155
static    102334155
dynamic   102334155
loop      102334155
switch    102334155
real 5.88
user 5.88
sys 0.00
```

Decompiled and recompiled again is 10 times slower still:
```
$ time -p ./fib.elf.x64.recomp.decomp.recomp.bin 40
recursive 102334155
static    102334155
dynamic   102334155
loop      102334155
switch    102334155
real 52.89
user 52.81
sys 0.03
```

Decompiled and recompiled another time is 6 times slower:
```
time -p ./fib.elf.x64.recomp.recomp.decomp.recomp.bin 40
recursive 102334155
static    102334155
dynamic   102334155
loop      102334155
switch    102334155
real 315.13
user 314.69
sys 0.10
```

Similarly with optimizations.

Original:
```
$ time -p impl/examples/fib.elf.x64.O3/fib.elf.x64.O3 40
recursive 102334155
static    102334155
dynamic   102334155
loop      102334155
switch    102334155
real 0.20
user 0.19
sys 0.00

```

Recompiled:
```
$ time -p ./fib.elf.x64.O3.decomp.recomp.bin 40
recursive 102334155
static    102334155
dynamic   102334155
loop      102334155
switch    102334155
real 2.58
user 2.58
sys 0.00

```

### Is the result cross-platform.
Yes and no. As long as the basic type sizes and the endianness of the platform
on which the result is to be compiled are the same as those of the original
platform's binary, it should work. E.g. a decompiled x64 binary source compiles
and runs on aarch64.
