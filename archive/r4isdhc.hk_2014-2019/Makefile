.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4isdhc.hk_Dual-Core_pre-2019_BL2CK_1.30.4.zip r4isdhc.hk_Silver_RTS_Lite_pre-2019_BL2CK_1.30.4.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4isdhc.hk_Dual-Core_pre-2019_BL2CK_1.30.4.zip: directory
	cd $(COMMON)/BL2CK/BL2CK_1.30.4 && zip -r $(OUT)/$(BASE)/$@ *

r4isdhc.hk_Silver_RTS_Lite_pre-2019_BL2CK_1.30.4.zip: directory
	cd $(COMMON)/BL2CK/BL2CK_1.30.4_Amaze3DS && zip -r $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@

extdata: directory
	cp -r r4isdhc.hk_2014-2017_FWUpdate* README.txt $(OUT)/$(BASE)
