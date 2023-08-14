.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory BL2CK_1.30.4.zip BL2CK_1.30.4_Amaze3DS.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

BL2CK_1.30.4.zip: directory
	cd $(COMMON)/BL2CK/BL2CK_1.30.4 && zip -r $(OUT)/$(BASE)/$@ *

BL2CK_1.30.4_Amaze3DS.zip: directory
	cd $(COMMON)/BL2CK/BL2CK_1.30.4_Amaze3DS && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp amazekard.com_FWUpdate_1.4.2.nds amazekard.png $(OUT)/$(BASE)
