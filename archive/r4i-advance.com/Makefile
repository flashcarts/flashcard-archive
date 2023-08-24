.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory R4i-Advance_Kernel_3.0.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

R4i-Advance_Kernel_3.0.zip: directory
	cd $(TOPDIR)/R4i-Advance_Kernel_3.0 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
