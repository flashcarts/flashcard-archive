.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory BL2CK_1.31.0_r4dspro.com.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/r4dspro.com/Makefile

old: directory
	make -C $@

extdata: directory
	cp README.txt $(OUT)/$(BASE)
