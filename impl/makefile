# <help>
.PHONY: help
help:
	@echo 'make all    - odr + ir-x64 + c-x64'
	@echo 'make odr    - make the objdump reader'
	@echo 'make ir-x64 - make x64-to-ir.awk'
	@echo 'make c-x64  - make x64-ir-to-c.awk'
	@echo 'make help   - this screen'
# </help>

# <directories>
COMMON_DIR := ./common
CA_DIR := ./code-analysis
LIB_DIR := $(COMMON_DIR)/lib
# </directories>

# <all>
.PHONY: all
all: odr ir-x64 c-x64
# </all>

# <objdump-reader>
ODR_TARGET := objdump-reader.awk
ODR_DIR := ./objdump-reader
ODR_SRC := $(ODR_DIR)/main.awk
ODR_SRC += $(ODR_DIR)/_hex-reader.awk
ODR_SRC += $(ODR_DIR)/_code-reader.awk
ODR_LIB := $(LIB_DIR)/awklib_prog.awk
ODR_LIB += $(LIB_DIR)/awklib_read.awk
ODR_DEP := $(ODR_SRC) $(ODR_LIB)

.PHONY: odr
odr: $(ODR_TARGET)

$(ODR_TARGET): $(ODR_DEP)
	cat $^ > $@ && chmod +x $@
# </objdump-reader>

# <asm2ir>
IR_X64_TARGET := x64-asm2ir.awk
IR_X64_DIR := ./asm2ir
IR_X64_SRC := $(IR_X64_DIR)/main.awk
IR_X64_SRC += $(IR_X64_DIR)/_x64-asm2ir.awk
IR_X64_SRC += $(COMMON_DIR)/_code_read.awk
IR_X64_SRC += $(COMMON_DIR)/_hex-dec.awk
IR_X64_SRC += $(COMMON_DIR)/_fn_instr.awk
IR_X64_SRC += $(COMMON_DIR)/_ir.awk

.PHONY: ir-x64
ir-x64: $(IR_X64_TARGET)

$(IR_X64_TARGET): $(IR_X64_SRC)
	cat $^ > $@ && chmod +x $@
# </asm2ir>

# <ir2c>
C_X64_TARGET := x64-ir2c.awk
C_X64_DIR := ./ir2c
C_X64_SRC := $(C_X64_DIR)/main.awk
C_X64_SRC += $(C_X64_DIR)/_x64-ir2c.awk
C_X64_SRC += $(C_X64_DIR)/_x64-static-c.awk
C_X64_SRC += $(COMMON_DIR)/_code_read.awk
C_X64_SRC += $(COMMON_DIR)/_fn_instr.awk
C_X64_SRC += $(COMMON_DIR)/_hex-dec.awk
C_X64_SRC += $(COMMON_DIR)/_ir.awk
C_X64_SRC += $(COMMON_DIR)/_db.awk
C_X64_SRC += $(COMMON_DIR)/_ascii.awk
C_X64_SRC += $(LIB_DIR)/awklib_read.awk
C_X64_SRC += $(CA_DIR)/_ca_entry.awk
C_X64_SRC += $(CA_DIR)/_bb.awk
C_X64_SRC += $(CA_DIR)/_cfg.awk
C_X64_SRC += $(CA_DIR)/_defuse_instr.awk

.PHONY: c-x64
c-x64: $(C_X64_TARGET)
$(C_X64_TARGET): $(C_X64_SRC)
	cat $^ > $@ && chmod +x $@
# </ir2c>
