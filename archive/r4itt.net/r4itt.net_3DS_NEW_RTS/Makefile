.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4itt.net/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory BL2CK_1.30.4.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/R4iTT/Makefile

old: directory
	make -C $@

extdata: directory
	cp -r r4itt.net_3DS_*_FWUpdate* $(OUT)/$(BASE)
