.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := ndsill.net/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory ndsill.net_original_Kernel_1.45.zip

directory:
	mkdir -p $(OUT)/$(BASE)

ndsill.net_original_Kernel_1.45.zip: directory
	cd $(TOPDIR)/ndsill.net_original_Kernel_1.45 && zip -r $(OUT)/$(BASE)/$@ *
