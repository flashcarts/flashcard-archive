.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4issdhc.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4issdhc.com_Kernel_4.301.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4issdhc.com_Kernel_4.301.zip: directory
	cd $(TOPDIR)/r4issdhc.com_Kernel_4.301 && zip -r $(OUT)/$(BASE)/$@ *
