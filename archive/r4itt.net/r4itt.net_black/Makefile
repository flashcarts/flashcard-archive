.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4itt.net/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory R4iTT_black_Kernel_2.27.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

R4iTT_black_Kernel_2.27.zip: directory
	cd $(TOPDIR)/R4iTT_black_Kernel_2.27 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp -r R4iTT_black_FWUpdate* $(OUT)/$(BASE)
