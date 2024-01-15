.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := ace3ds.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory ace3ds.com_Original_Kernel_20120308.zip

directory:
	mkdir -p $(OUT)/$(BASE)

ace3ds.com_Original_Kernel_20120308.zip: directory
	cd $(TOPDIR)/ace3ds.com_Original_Kernel_20120308 && zip -r $(OUT)/$(BASE)/$@ *
