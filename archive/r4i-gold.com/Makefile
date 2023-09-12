.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory old r4i-gold.com_Pro_2013_Wood_R4_1.51.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

old: directory
	make -C $@

r4i-gold.com_Pro_2013_Wood_R4_1.51.zip: directory
	cd $(TOPDIR)/r4i-gold.com_Pro_2013_Wood_R4_1.51 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp YSMenu-instructions.txt $(OUT)/$(BASE)