.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4dspro.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4dspro.com_Kernel_1.50.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4dspro.com_Kernel_1.50.zip: directory
	cd $(TOPDIR)/r4dspro.com_Kernel_1.50 && zip -r $(OUT)/$(BASE)/$@ *
