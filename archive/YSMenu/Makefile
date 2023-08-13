.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory extdata

directory:
	mkdir -p $(OUT)/$(BASE)

extdata: directory
	cp -r DEMON_common $(OUT)/$(BASE)
