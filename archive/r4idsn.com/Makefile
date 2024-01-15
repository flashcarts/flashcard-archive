.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4idsn.com_Wood_R4_1.62.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4idsn.com_Wood_R4_1.62.zip: directory
	cd $(TOPDIR)/r4idsn.com_Wood_R4_1.62 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
