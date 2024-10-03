.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory old r4i-gold.hk_RTS_Kernel_4.1.0.8.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

old: directory
	make -C $@

r4i-gold.hk_RTS_Kernel_4.1.0.8.zip: directory
	cd $(TOPDIR)/r4i-gold.hk_RTS_Kernel_4.1.0.8 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp readme.txt $(OUT)/$(BASE)