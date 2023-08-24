.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory stargate-3ds.com_Kernel_1.0.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

stargate-3ds.com_Kernel_1.0.zip: directory
	cd $(TOPDIR)/stargate-3ds.com_Kernel_1.0 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
