.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4isdhc.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4isdhc.com_Dual-Core_Kernel_1.38.zip r4isdhc.com_RTS_black_Kernel_3.2.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4isdhc.com_Dual-Core_Kernel_1.38.zip: directory
	cd $(TOPDIR)/r4isdhc.com_Dual-Core_Kernel_1.38 && zip -r $(OUT)/$(BASE)/$@ *

r4isdhc.com_RTS_black_Kernel_3.2.zip: directory
	cd $(TOPDIR)/r4isdhc.com_RTS_black_Kernel_3.2 && zip -r $(OUT)/$(BASE)/$@ *
