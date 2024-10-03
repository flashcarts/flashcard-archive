.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := ndslr4.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory ndslr4.com_Kernel_1.34.zip

directory:
	mkdir -p $(OUT)/$(BASE)

ndslr4.com_Kernel_1.34.zip: directory
	cd $(COMMON)/R4SDHC_Original_Kernel_1.34 && zip -r $(OUT)/$(BASE)/$@ *
