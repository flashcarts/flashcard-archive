.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4i-sdhc.hk/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-sdhc.hk_Unlimited_Upgradable_FWUpdate_3DS4.2_DSi1.4.4.zip r4i-sdhc.hk_Unlimited_Upgradable_Kernel_4.2.0.9A.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-sdhc.hk_Unlimited_Upgradable_FWUpdate_3DS4.2_DSi1.4.4.zip: directory
	cd $(TOPDIR)/r4i-sdhc.hk_Unlimited_Upgradable_FWUpdate_3DS4.2_DSi1.4.4 && zip -r -X $(OUT)/$(BASE)/$@ *

r4i-sdhc.hk_Unlimited_Upgradable_Kernel_4.2.0.9A.zip: directory
	cd $(TOPDIR)/r4i-sdhc.hk_Unlimited_Upgradable_Kernel_4.2.0.9A && zip -r -X $(OUT)/$(BASE)/$@ *
