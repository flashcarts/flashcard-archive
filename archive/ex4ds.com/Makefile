.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory EX4DS_Kernel_2.01.zip

directory:
	mkdir -p $(OUT)/$(BASE)

EX4DS_Kernel_2.01.zip: directory
	cd $(TOPDIR)/EX4DS_Kernel_2.01 && zip -r -X $(OUT)/$(BASE)/$@ *
