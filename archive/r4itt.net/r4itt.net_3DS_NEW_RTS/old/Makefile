.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4itt.net/r4itt.net_3DS_NEW_RTS/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../../out
export COMMON := $(TOPDIR)/../../../../common-kernels

package: directory r4itt.net_3DS_NEW_Kernel_2.37.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4itt.net_3DS_NEW_Kernel_2.37.zip: directory
	cd $(TOPDIR)/r4itt.net_3DS_NEW_Kernel_2.37 && zip -r -X $(OUT)/$(BASE)/$@ *
