.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4i-gold.hk/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-gold.hk_1.4.x_Kernel_1.4.3c.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-gold.hk_1.4.x_Kernel_1.4.3c.zip: directory
	cd $(TOPDIR)/r4i-gold.hk_1.4.x_Kernel_1.4.3c && zip -r $(OUT)/$(BASE)/$@ *
