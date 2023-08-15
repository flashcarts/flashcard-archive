.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4infinity.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory BL2CK_1.30.4_Amaze3DS.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/Amaze3DS/Makefile

old: directory
	make -C $@

extdata: directory
	cp -r README.txt $(OUT)/$(BASE)
