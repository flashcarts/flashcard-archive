.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4isdhc.hk_2014-2019/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4isdhc.hk_Dual-Core_2014-2017_Kernel_1.71.zip r4isdhc.hk_Dual-Core_2014-2017_Kernel_1.72.zip r4isdhc.hk_Silver_RTS_Lite_2014-2017_Kernel_3.01.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4isdhc.hk_Dual-Core_2014-2017_Kernel_1.71.zip: directory
	cd $(TOPDIR)/r4isdhc.hk_Dual-Core_2014-2017_Kernel_1.71 && zip -r -X $(OUT)/$(BASE)/$@ *

r4isdhc.hk_Dual-Core_2014-2017_Kernel_1.72.zip: directory
	cd $(TOPDIR)/r4isdhc.hk_Dual-Core_2014-2017_Kernel_1.72 && zip -r -X $(OUT)/$(BASE)/$@ *

r4isdhc.hk_Silver_RTS_Lite_2014-2017_Kernel_3.01.zip: directory
	cd $(TOPDIR)/r4isdhc.hk_Silver_RTS_Lite_2014-2017_Kernel_3.01 && zip -r -X $(OUT)/$(BASE)/$@ *
