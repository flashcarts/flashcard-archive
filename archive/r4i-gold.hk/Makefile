.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4i-gold.hk_RTS_Kernel_4.1.0.8.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-gold.hk_RTS_Kernel_4.1.0.8.zip: directory
	cd $(TOPDIR)/r4i-gold.hk_RTS_Kernel_4.1.0.8 && zip -r -X $(OUT)/$(BASE)/$@ *
