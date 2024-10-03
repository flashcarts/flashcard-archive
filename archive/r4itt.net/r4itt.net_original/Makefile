.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4itt.net/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

old: directory
	make -C $@

extdata: directory
	cp -r readme.txt R4iTT_original_FWUpdate_DSiV1.4.4_3DSV4.1.0 $(OUT)/$(BASE)