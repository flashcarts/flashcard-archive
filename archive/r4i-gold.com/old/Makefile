.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4i-gold.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-gold.com_Gold_3DS_RTS.zip r4i-gold.com_V1.4.1-1.4.4_DEMON_1.80.zip r4i-gold.com_V1.4.1-1.4.4_FWUpdate-1.4.4.zip r4i-gold.com_Pro_2013_Wood_R4_1.51.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-gold.com_Gold_3DS_RTS.zip: directory
	cd $(TOPDIR)/r4i-gold.com_Gold_3DS_RTS && zip -r $(OUT)/$(BASE)/$@ *

r4i-gold.com_V1.4.1-1.4.4_DEMON_1.80.zip: directory
	cd $(TOPDIR)/r4i-gold.com_V1.4.1-1.4.4_DEMON_1.80 && zip -r $(OUT)/$(BASE)/$@ *

r4i-gold.com_V1.4.1-1.4.4_FWUpdate-1.4.4.zip: directory
	cd $(TOPDIR)/r4i-gold.com_V1.4.1-1.4.4_FWUpdate-1.4.4 && zip -r $(OUT)/$(BASE)/$@ *

r4i-gold.com_Pro_2013_Wood_R4_1.51.zip: directory
	cd $(TOPDIR)/r4i-gold.com_Pro_2013_Wood_R4_1.51 && zip -r $(OUT)/$(BASE)/$@ *
