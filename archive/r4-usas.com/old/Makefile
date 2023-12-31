.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4-usas.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4-usas.com_DEMON_3.9b.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4-usas.com_DEMON_3.9b.zip: directory
	cd $(TOPDIR)/r4-usas.com_DEMON_3.9b && zip -r -X $(OUT)/$(BASE)/$@ *
