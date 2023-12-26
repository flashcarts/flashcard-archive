.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4idsxl.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4idsxl.com_Kernel_1.6.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4idsxl.com_Kernel_1.6.zip: directory
	cd $(TOPDIR)/r4idsxl.com_Kernel_1.6 && zip -r -X $(OUT)/$(BASE)/$@ *
