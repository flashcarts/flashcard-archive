.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4isdhc.com.hk_Kernel_1.09b.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4isdhc.com.hk_Kernel_1.09b.zip: directory
	cd $(TOPDIR)/r4isdhc.com.hk_Kernel_1.09b && zip -r $(OUT)/$(BASE)/$@ *
