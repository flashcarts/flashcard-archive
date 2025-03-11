.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4i-sdhc.com_DEMON_1.87b.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-sdhc.com_DEMON_1.87b.zip: directory
	cd $(TOPDIR)/r4i-sdhc.com_DEMON_1.87b && zip -r $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@

extdata: directory
	cp readme.txt $(OUT)/$(BASE)
