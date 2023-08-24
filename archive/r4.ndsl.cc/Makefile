.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4.ndsl.cc_Kernel_2.0.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4.ndsl.cc_Kernel_2.0.zip: directory
	cd $(TOPDIR)/r4.ndsl.cc_Kernel_2.0 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
