.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4imax.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory 

directory:
	mkdir -p $(OUT)/$(BASE)

r4imax.com_Kernel_4.5.zip: directory
	cd $(TOPDIR)/r4imax.com_Kernel_4.5 && zip -r $(OUT)/$(BASE)/$@ *
