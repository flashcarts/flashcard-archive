.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4itt.net/r4itt.net_original/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../../out
export COMMON := $(TOPDIR)/../../../../common-kernels

package: directory R4iTT.net_original_Kernel_2.32.zip

directory:
	mkdir -p $(OUT)/$(BASE)

R4iTT.net_original_Kernel_2.32.zip: directory
	cd $(TOPDIR)/R4iTT.net_original_Kernel_2.32 && zip -r $(OUT)/$(BASE)/$@ *
