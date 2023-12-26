.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4i-fifa.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-fifa.com_Kernel_2.0.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-fifa.com_Kernel_2.0.zip: directory
	cd $(TOPDIR)/r4i-fifa.com_Kernel_2.0 && zip -r -X $(OUT)/$(BASE)/$@ *
