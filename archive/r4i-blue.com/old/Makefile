.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4i-blue.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-blue.com_Kernel_1.6.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-blue.com_Kernel_1.6.zip: directory
	cd $(TOPDIR)/r4i-blue.com_Kernel_1.6 && zip -r $(OUT)/$(BASE)/$@ *
