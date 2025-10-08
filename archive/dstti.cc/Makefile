.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory DSTTi_CC_2.9.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

DSTTi_CC_2.9.zip: directory
	cd $(TOPDIR)/DSTTi_CC_2.9 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp -r README.txt $(OUT)/$(BASE)
