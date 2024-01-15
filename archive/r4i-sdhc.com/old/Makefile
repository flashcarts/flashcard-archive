.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4i-sdhc.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-sdhc.com_DEMON_1.85b.zip r4i-sdhc.com_DEMON_1.85b-notimebomb.zip r4i-sdhc.com_R4i_Upgrade_no-version_DEMON_1.12d.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-sdhc.com_DEMON_1.85b.zip: directory
	cd $(TOPDIR)/r4i-sdhc.com_DEMON_1.85b && zip -r $(OUT)/$(BASE)/$@ *

r4i-sdhc.com_DEMON_1.85b-notimebomb.zip: directory
	cd $(TOPDIR)/r4i-sdhc.com_DEMON_1.85b-notimebomb && zip -r $(OUT)/$(BASE)/$@ *

r4i-sdhc.com_R4i_Upgrade_no-version_DEMON_1.12d.zip: directory
	cd $(TOPDIR)/r4i-sdhc.com_R4i_Upgrade_no-version_DEMON_1.12d && zip -r $(OUT)/$(BASE)/$@ *