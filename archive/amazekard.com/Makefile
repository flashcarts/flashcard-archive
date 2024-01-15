.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory amazekard.com_Kernel_2.1.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

amazekard.com_Kernel_2.1.zip: directory
	cd amazekard.com_Kernel_2.1 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp amazekard.com_FWUpdate_1.4.2.nds amazekard.png $(OUT)/$(BASE)
