.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory EDGE_OS_2.3.zip iEDGE_OS_2.3.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

EDGE_OS_2.3.zip: directory
	cd $(TOPDIR)/EDGE_OS_2.3 && zip -r $(OUT)/$(BASE)/$@ *

iEDGE_OS_2.3.zip: directory
	cd $(TOPDIR)/iEDGE_OS_2.3 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
