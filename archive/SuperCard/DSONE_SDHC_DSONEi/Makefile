.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := SuperCard/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory SuperCard_DSONE_SDHC_EOS_sp6_20121206.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

SuperCard_DSONE_SDHC_EOS_sp6_20121206.zip: directory
	cd $(TOPDIR)/SuperCard_DSONE_SDHC_EOS_sp6_20121206 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp SuperCard_DSONEi_FWUpdate_1.4.5.nds $(OUT)/$(BASE)
