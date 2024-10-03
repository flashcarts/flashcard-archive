.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory dslinker_xmenu2.55.zip dslinker_xmenu2.53_fw1.45.zip

directory:
	mkdir -p $(OUT)/$(BASE)

dslinker_xmenu2.55.zip: directory
	cd $(TOPDIR)/dslinker_xmenu2.55 && zip -r $(OUT)/$(BASE)/$@ *

dslinker_xmenu2.53_fw1.45.zip: directory
	cd $(TOPDIR)/dslinker_xmenu2.53_fw1.45 && zip -r $(OUT)/$(BASE)/$@ *
