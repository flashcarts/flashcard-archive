.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory HyperR4i_v1.58.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

HyperR4i_v1.58.zip: directory
	cd $(TOPDIR)/HyperR4i_v1.58 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp Readme.txt $(OUT)/$(BASE)
