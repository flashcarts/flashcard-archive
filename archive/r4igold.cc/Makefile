.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4igold.cc_Kernel_2.6.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4igold.cc_Kernel_2.6.zip: directory
	cd $(TOPDIR)/r4igold.cc_Kernel_2.6 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp -r r4igold.cc_3DS_FWUpdate* README.md $(OUT)/$(BASE)
