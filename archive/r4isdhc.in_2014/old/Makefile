.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4isdhc.in_2014/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4isdhc.in_Dual-Core_2014_Kernel_1.62.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4isdhc.in_Dual-Core_2014_Kernel_1.62.zip: directory
	cd $(TOPDIR)/r4isdhc.in_Dual-Core_2014_Kernel_1.62 && zip -r $(OUT)/$(BASE)/$@ *
