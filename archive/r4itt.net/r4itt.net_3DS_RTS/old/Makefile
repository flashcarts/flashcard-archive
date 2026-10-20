.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4itt.net/r4itt.net_3DS_RTS/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../../out
export COMMON := $(TOPDIR)/../../../../common-kernels

package: directory r4itt.net_3DS_RTS_Kernel_5.01.zip r4itt.net_3DS_RTS_Kernel_5.00.zip r4itt.net_3DS_RTS_Kernel_3.03.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4itt.net_3DS_RTS_Kernel_5.01.zip: directory
	cd $(TOPDIR)/r4itt.net_3DS_RTS_Kernel_5.01 && zip -r $(OUT)/$(BASE)/$@ *

r4itt.net_3DS_RTS_Kernel_5.00.zip: directory
	cd $(TOPDIR)/r4itt.net_3DS_RTS_Kernel_5.00 && zip -r $(OUT)/$(BASE)/$@ *

r4itt.net_3DS_RTS_Kernel_3.03.zip: directory
	cd $(TOPDIR)/r4itt.net_3DS_RTS_Kernel_3.03 && zip -r $(OUT)/$(BASE)/$@ *
