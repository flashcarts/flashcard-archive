.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4i-best.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-best.com_R4i-SDHC_DEMON_1.08b.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-best.com_R4i-SDHC_DEMON_1.08b.zip: directory
	cd $(TOPDIR)/r4i-best.com_R4i-SDHC_DEMON_1.08b && zip -r $(OUT)/$(BASE)/$@ *
