.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory iPlayer_OS_1.3-20120323.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

iPlayer_OS_1.3-20120323.zip: directory
	cd $(TOPDIR)/iPlayer_OS_1.3-20120323 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.md $(OUT)/$(BASE)
