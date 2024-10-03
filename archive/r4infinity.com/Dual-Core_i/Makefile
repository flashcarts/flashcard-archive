.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4infinity.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory BL2CK_1.31.0.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/R4iTT/Makefile

old: directory
	make -C $@

extdata: directory
	cp -r README.txt $(OUT)/$(BASE)
