.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4infinity.com/R4infinity_3/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../../out
export COMMON := $(TOPDIR)/../../../../common-kernels

package: directory r4infinity.com_3_Kernel_2.5.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4infinity.com_3_Kernel_2.5.zip: directory
	cd $(TOPDIR)/r4infinity.com_3_Kernel_2.5 && zip -r $(OUT)/$(BASE)/$@ *
