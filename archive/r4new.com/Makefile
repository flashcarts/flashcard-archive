.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4new.com_Kernel_1.35.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4new.com_Kernel_1.35.zip: directory
	cd $(TOPDIR)/r4new.com_Kernel_1.35 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
