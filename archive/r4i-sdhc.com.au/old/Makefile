.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4i-sdhc.com.au/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-sdhc.com.au_1.4V_Kernel_3.03.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-sdhc.com.au_1.4V_Kernel_3.03.zip: directory
	cd $(TOPDIR)/r4i-sdhc.com.au_1.4V_Kernel_3.03 && zip -r $(OUT)/$(BASE)/$@ *
