.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory BL2CK_1.30.4.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

BL2CK_1.30.4.zip: directory
	cd $(COMMON)/BL2CK/BL2CK_1.30.4 && zip -r $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@

extdata: directory
	cp -r README.txt $(OUT)/$(BASE)
