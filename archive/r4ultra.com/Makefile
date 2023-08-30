.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory BL2CK_1.31.0.zip R4_Ultra_AKAIO_1.8.6a.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/R4iTT/Makefile

R4_Ultra_AKAIO_1.8.6a.zip: directory
	cd $(TOPDIR)/R4_Ultra_AKAIO_1.8.6a && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp -r R4i_Ultra_F* README.txt $(OUT)/$(BASE)
