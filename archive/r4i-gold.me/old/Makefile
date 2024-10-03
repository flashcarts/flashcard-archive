.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4i-gold.me/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-gold.me_2013_Kernel_1.63.1.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-gold.me_2013_Kernel_1.63.1.zip: directory
	cd $(TOPDIR)/r4i-gold.me_2013_Kernel_1.63.1 && zip -r $(OUT)/$(BASE)/$@ *
