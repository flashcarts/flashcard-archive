.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4infinity.com/Dual-Core_i/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../../out
export COMMON := $(TOPDIR)/../../../../common-kernels

package: directory r4infinity.com_Dual_Core_Kernel_4.4.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4infinity.com_Dual_Core_Kernel_4.4.zip: directory
	cd $(TOPDIR)/r4infinity.com_Dual_Core_Kernel_4.4 && zip -r -X $(OUT)/$(BASE)/$@ *
