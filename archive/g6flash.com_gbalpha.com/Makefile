.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory g6flash.com_gbalpha.com_Kernel_4.9a.zip

directory:
	mkdir -p $(OUT)/$(BASE)

g6flash.com_gbalpha.com_Kernel_4.9a.zip: directory
	cd $(TOPDIR)/g6flash.com_gbalpha.com_Kernel_4.9a && zip -r -X $(OUT)/$(BASE)/$@ *
