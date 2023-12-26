.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory old r4i-gold.com_3DS_Gold_Pro_2013_BL2CK_1.31.0.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

old: directory
	make -C $@

include $(COMMON)/BL2CK/R4iTT/Makefile

r4i-gold.com_3DS_Gold_Pro_2013_BL2CK_1.31.0.zip: BL2CK_1.31.0.zip
	mv $(OUT)/$(BASE)/$< $(OUT)/$(BASE)/$@

extdata: directory
	cp readme.txt $(OUT)/$(BASE)