.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4ita.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4ita.com_Original_Kernel_2.05.zip r4ita.com_SDHC_Kernel_2.5.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4ita.com_Original_Kernel_2.05.zip: directory
	cd $(TOPDIR)/r4ita.com_Original_Kernel_2.05 && zip -r $(OUT)/$(BASE)/$@ *

r4ita.com_SDHC_Kernel_2.5.zip: directory
	cd $(TOPDIR)/r4ita.com_SDHC_Kernel_2.5 && zip -r $(OUT)/$(BASE)/$@ *
