.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory BL2CK_1.31.0.zip r4ids.cn_non-3DS_Wood_R4_1.54.zip r4ids.cn_Wood_R4_1.64.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/R4iTT/Makefile

r4ids.cn_non-3DS_Wood_R4_1.54.zip: directory
	cd $(TOPDIR)/r4ids.cn_non-3DS_Wood_R4_1.54 && zip -r -X $(OUT)/$(BASE)/$@ *

r4ids.cn_Wood_R4_1.64.zip: directory
	cd $(TOPDIR)/r4ids.cn_Wood_R4_1.64 && zip -r -X $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@

extdata: directory
	cp -r r4ids.cn_FWUpdate_6.2.0 README.txt $(OUT)/$(BASE)
