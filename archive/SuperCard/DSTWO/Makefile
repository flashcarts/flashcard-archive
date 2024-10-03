.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := SuperCard/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory SuperCard_DSTWO_EOS_1.14.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

SuperCard_DSTWO_EOS_1.14.zip: directory
	cd $(TOPDIR)/SuperCard_DSTWO_EOS_1.14 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp -r SuperCard_DSTWO_FWUpdate* $(OUT)/$(BASE)
