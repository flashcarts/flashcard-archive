.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4ixds.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4ixds.com_2014-black_2015-2016_Kernel_7.1.0.zip r4ixds.com_2017_Kernel_V8.10b.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4ixds.com_2014-black_2015-2016_Kernel_7.1.0.zip: directory
	cd $(TOPDIR)/r4ixds.com_2014-black_2015-2016_Kernel_7.1.0 && zip -r $(OUT)/$(BASE)/$@ *

r4ixds.com_2017_Kernel_V8.10b.zip: directory
	cd $(TOPDIR)/r4ixds.com_2017_Kernel_V8.10b && zip -r $(OUT)/$(BASE)/$@ *
