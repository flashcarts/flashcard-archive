.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory acekard.cc_Acekard_3_AKAIO_1.8.7.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

acekard.cc_Acekard_3_AKAIO_1.8.7.zip: directory
	cd $(TOPDIR)/acekard.cc_Acekard_3_AKAIO_1.8.7 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp acekardcc.jpg $(OUT)/$(BASE)
