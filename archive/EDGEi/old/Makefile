.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := EDGEi/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory EDGEi_Kernel_2.20.zip

directory:
	mkdir -p $(OUT)/$(BASE)

EDGEi_Kernel_2.20.zip: directory
	cd $(TOPDIR)/EDGEi_Kernel_2.20 && zip -r $(OUT)/$(BASE)/$@ *
