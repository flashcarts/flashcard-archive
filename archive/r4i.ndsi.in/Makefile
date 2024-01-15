.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4i.ndsi.in_R4i_Gold_Kernel_3.2.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i.ndsi.in_R4i_Gold_Kernel_3.2.zip: directory
	cd $(TOPDIR)/r4i.ndsi.in_R4i_Gold_Kernel_3.2 && zip -r $(OUT)/$(BASE)/$@ *
