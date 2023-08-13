.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := SuperCard/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory extdata

directory:
	mkdir -p $(OUT)/$(BASE)

extdata: directory
	cp -r SuperCard_Lite_Rumble_FWUpdate* $(OUT)/$(BASE)
