.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4igold.cc/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4igold.cc_V_Kernel_v4.5.zip r4igold.cc_3ds_Kernel_v3.7.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4igold.cc_V_Kernel_v4.5.zip: directory
	cd $(TOPDIR)/r4igold.cc_V_Kernel_v4.5 && zip -r $(OUT)/$(BASE)/$@ *

r4igold.cc_3ds_Kernel_v3.7.zip: directory
	cd $(TOPDIR)/r4igold.cc_3ds_Kernel_v3.7 && zip -r $(OUT)/$(BASE)/$@ *
