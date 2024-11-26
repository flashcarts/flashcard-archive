.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4isdhc.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4isdhc.com_Dual-Core_Kernel_1.38.zip r4isdhc.com_RTS_black_Kernel_3.2.zip r4isdhc.com_2014-2024_DEMON_4.0b.zip r4isdhc.com_2014-2024_DEMON_4.3.zip r4isdhc.com_Christmas_Edition_Limited_SDHC_Kernel_1.17B.zip r4isdhc.com_Silver_RTS_Lite_Kernel_1.30.zip r4isdhc.com_Upgrade_V1.4_Kernel_2.0.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4isdhc.com_Dual-Core_Kernel_1.38.zip: directory
	cd $(TOPDIR)/r4isdhc.com_Dual-Core_Kernel_1.38 && zip -r $(OUT)/$(BASE)/$@ *

r4isdhc.com_RTS_black_Kernel_3.2.zip: directory
	cd $(TOPDIR)/r4isdhc.com_RTS_black_Kernel_3.2 && zip -r $(OUT)/$(BASE)/$@ *

r4isdhc.com_2014-2024_DEMON_4.0b.zip: directory
	cd $(TOPDIR)/r4isdhc.com_2014-2024_DEMON_4.0b && zip -r $(OUT)/$(BASE)/$@ *

r4isdhc.com_2014-2024_DEMON_4.3.zip: directory
	cd $(TOPDIR)/r4isdhc.com_2014-2024_DEMON_4.3 && zip -r $(OUT)/$(BASE)/$@ *

r4isdhc.com_Christmas_Edition_Limited_SDHC_Kernel_1.17B.zip: directory
	cd $(TOPDIR)/r4isdhc.com_Christmas_Edition_Limited_SDHC_Kernel_1.17B && zip -r $(OUT)/$(BASE)/$@ *

r4isdhc.com_Silver_RTS_Lite_Kernel_1.30.zip: directory
	cd $(TOPDIR)/r4isdhc.com_Silver_RTS_Lite_Kernel_1.30 && zip -r $(OUT)/$(BASE)/$@ *

r4isdhc.com_Upgrade_V1.4_Kernel_2.0.zip: directory
	cd $(TOPDIR)/r4isdhc.com_Upgrade_V1.4_Kernel_2.0 && zip -r $(OUT)/$(BASE)/$@ *
