.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4i-ndsill.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-ndsill.com_Kernel_2.05.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-ndsill.com_Kernel_2.05.zip: directory
	cd $(TOPDIR)/r4i-ndsill.com_Kernel_2.05 && zip -r -X $(OUT)/$(BASE)/$@ *
