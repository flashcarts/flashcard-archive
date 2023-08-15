.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4isdhc.com_Dual-Core_Original_NEW_2013_BL2CK_1.30.4.zip r4isdhc.com_Original_Kernel_1.19B.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/R4iTT/Makefile

r4isdhc.com_Dual-Core_Original_NEW_2013_BL2CK_1.30.4.zip: BL2CK_1.30.4.zip
	mv $(OUT)/$(BASE)/$< $(OUT)/$(BASE)/$@

r4isdhc.com_Original_Kernel_1.19B.zip: directory
	cd $(TOPDIR)/r4isdhc.com_Original_Kernel_1.19B && zip -r $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@

extdata: directory
	cp -r r4isdhc.com_Dual-Core_*_FWUpdate* README.txt $(OUT)/$(BASE)
