.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := SuperCard/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory SuperCard_DSONE_EOS_sp6_20130129_5850fix.zip

directory:
	mkdir -p $(OUT)/$(BASE)

SuperCard_DSONE_EOS_sp6_20130129_5850fix.zip: directory
	cd $(TOPDIR)/SuperCard_DSONE_EOS_sp6_20130129_5850fix && zip -r $(OUT)/$(BASE)/$@ *
