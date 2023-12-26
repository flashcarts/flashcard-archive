.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4-king.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4-king.com_Original_Kernel_5.05.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4-king.com_Original_Kernel_5.05.zip: directory
	cd $(TOPDIR)/r4-king.com_Original_Kernel_5.05 && zip -r -X $(OUT)/$(BASE)/$@ *
