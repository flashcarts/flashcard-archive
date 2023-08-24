.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4i-sdhc.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-sdhc.com_DEMON_1.85b.zip r4i-sdhc.com_DEMON_1.85b-notimebomb.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-sdhc.com_DEMON_1.85b.zip: directory
	cd $(TOPDIR)/r4i-sdhc.com_DEMON_1.85b && zip -r -X $(OUT)/$(BASE)/$@ *

r4i-sdhc.com_DEMON_1.85b-notimebomb.zip: directory
	cd $(TOPDIR)/r4i-sdhc.com_DEMON_1.85b-notimebomb && zip -r -X $(OUT)/$(BASE)/$@ *
