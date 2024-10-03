.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory extdata

directory:
	mkdir -p $(OUT)/$(BASE)

extdata: directory
	cp -r ds-link.net_Kernel_2.31 $(OUT)/$(BASE)
