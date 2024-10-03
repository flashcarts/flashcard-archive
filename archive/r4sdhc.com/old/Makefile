.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4sdhc.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4sdhc.com_R4i_SDHC_V2.10T_V2.20T_Kernel_2.10T15.zip r4sdhc.com_R4i_SDHC_V1.4_Kernel_2.07.zip r4sdhc.com_original_Kernel_1.34.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4sdhc.com_R4i_SDHC_V2.10T_V2.20T_Kernel_2.10T15.zip: directory
	cd $(TOPDIR)/r4sdhc.com_R4i_SDHC_V2.10T_V2.20T_Kernel_2.10T15 && zip -r $(OUT)/$(BASE)/$@ *

r4sdhc.com_R4i_SDHC_V1.4_Kernel_2.07.zip: directory
	cd $(TOPDIR)/r4sdhc.com_R4i_SDHC_V1.4_Kernel_2.07 && zip -r $(OUT)/$(BASE)/$@ *

r4sdhc.com_original_Kernel_1.34.zip: directory
	cd $(COMMON)/R4SDHC_Original_Kernel_1.34 && zip -r $(OUT)/$(BASE)/$@ *
