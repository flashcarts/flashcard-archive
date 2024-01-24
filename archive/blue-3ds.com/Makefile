.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory blue-3ds.com_Wood_R4_1.62.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

blue-3ds.com_Wood_R4_1.62.zip: directory
	cd $(TOPDIR)/blue-3ds.com_Wood_R4_1.62 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp bluecardds.jpg $(OUT)/$(BASE)
