.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4isdhc.hk_Dual-Core_pre-2019_BL2CK_1.31.0.zip r4isdhc.hk_Silver_RTS_Lite_pre-2019_BL2CK_1.31.0.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/R4iTT/Makefile

r4isdhc.hk_Dual-Core_pre-2019_BL2CK_1.31.0.zip: BL2CK_1.31.0.zip
	cp $(OUT)/$(BASE)/$< $(OUT)/$(BASE)/$@

# Move instead of copy
# Works around issue of dependency not being rebuilt
r4isdhc.hk_Silver_RTS_Lite_pre-2019_BL2CK_1.31.0.zip: BL2CK_1.31.0.zip
	mv $(OUT)/$(BASE)/$< $(OUT)/$(BASE)/$@

old: directory
	make -C $@

extdata: directory
	cp -r r4isdhc.hk_2014-2017_FWUpdate* README.txt $(OUT)/$(BASE)
