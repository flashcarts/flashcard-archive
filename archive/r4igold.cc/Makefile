.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4igold.cc_Kernel_2.6.zip r4igold.cc_Wood_BL2CK_1.31.0_Amaze3DS.zip r4igold.cc_3DS_BL2CK_1.31.0.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/R4iTT/Makefile
include $(COMMON)/BL2CK/Amaze3DS/Makefile

r4igold.cc_Wood_BL2CK_1.31.0_Amaze3DS.zip: BL2CK_1.31.0_Amaze3DS.zip
	mv $(OUT)/$(BASE)/$< $(OUT)/$(BASE)/$@

r4igold.cc_3DS_BL2CK_1.31.0.zip: BL2CK_1.31.0.zip
	mv $(OUT)/$(BASE)/$< $(OUT)/$(BASE)/$@

r4igold.cc_Kernel_2.6.zip: directory
	cd $(TOPDIR)/r4igold.cc_Kernel_2.6 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp -r r4igold.cc_3DS_FWUpdate* README.txt $(OUT)/$(BASE)
