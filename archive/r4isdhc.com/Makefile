.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4isdhc.com_Dual-Core_Original_NEW_2013_BL2CK_1.31.0.zip r4isdhc.com_Original_Kernel_1.19B.zip r4isdhc.com_2014-and-above_DEMON_4.3.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/R4iTT/Makefile

r4isdhc.com_Dual-Core_Original_NEW_2013_BL2CK_1.31.0.zip: BL2CK_1.31.0.zip
	mv $(OUT)/$(BASE)/$< $(OUT)/$(BASE)/$@

r4isdhc.com_Original_Kernel_1.19B.zip: directory
	cd $(TOPDIR)/r4isdhc.com_Original_Kernel_1.19B && zip -r $(OUT)/$(BASE)/$@ *

r4isdhc.com_2014-and-above_DEMON_4.3.zip: directory
	cd $(TOPDIR)/r4isdhc.com_2014-and-above_DEMON_4.3 && zip -r $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@

extdata: directory
	cp -r r4isdhc.com_Dual-Core_*_FWUpdate* README.txt $(OUT)/$(BASE)
