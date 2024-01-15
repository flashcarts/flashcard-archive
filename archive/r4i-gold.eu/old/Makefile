.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4i-gold.eu/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-gold.eu_3DS_DEMON_1.73b.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-gold.eu_3DS_DEMON_1.73b.zip: directory
	cd $(TOPDIR)/r4i-gold.eu_3DS_DEMON_1.73b && zip -r $(OUT)/$(BASE)/$@ *
