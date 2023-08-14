.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4igold.cc_Kernel_2.6.zip r4igold.cc_Wood_BL2CK_1.30.4_Amaze3DS.zip r4igold.cc_3DS_BL2CK_1.30.4.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4igold.cc_Wood_BL2CK_1.30.4_Amaze3DS.zip: directory
	cd $(COMMON)/BL2CK/BL2CK_1.30.4_Amaze3DS && zip -r $(OUT)/$(BASE)/$@ *

r4igold.cc_3DS_BL2CK_1.30.4.zip: directory
	cd $(COMMON)/BL2CK/BL2CK_1.30.4 && zip -r $(OUT)/$(BASE)/$@ *

r4igold.cc_Kernel_2.6.zip: directory
	cd $(TOPDIR)/r4igold.cc_Kernel_2.6 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp -r r4igold.cc_3DS_FWUpdate* README.md $(OUT)/$(BASE)
