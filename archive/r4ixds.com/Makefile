.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4ixds.com_2014-black_2015-2016_BL2CK_1.30.4.zip old

directory:
	mkdir -p $(OUT)/$(BASE)

r4ixds.com_2014-black_2015-2016_BL2CK_1.30.4.zip: directory
	cd $(COMMON)/BL2CK/BL2CK_1.30.4 && zip -r $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@
