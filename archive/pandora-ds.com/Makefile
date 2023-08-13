.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory pandora-ds.com_Kernel.zip

directory:
	mkdir -p $(OUT)/$(BASE)

pandora-ds.com_Kernel.zip: directory
	cd $(TOPDIR)/pandora-ds.com_Kernel && zip -r $(OUT)/$(BASE)/$@ *
