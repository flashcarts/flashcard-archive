.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory old ndsill.net_3DS_Kernel_2.60.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

old: directory
	make -C $@

ndsill.net_3DS_Kernel_2.60.zip: directory
	cd $(TOPDIR)/ndsill.net_3DS_Kernel_2.60 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
