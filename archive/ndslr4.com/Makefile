.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory ndslr4.com_Kernel_1.34.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

ndslr4.com_Kernel_1.34.zip: directory
	cd $(TOPDIR)/ndslr4.com_Kernel_1.34 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
