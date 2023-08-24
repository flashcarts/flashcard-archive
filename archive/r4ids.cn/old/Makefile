.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4ids.cn/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4ids.cn_Multi-Function_1.51d.zip r4ids.cn_non-3DS_Multi-Function_1.51d.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4ids.cn_Multi-Function_1.51d.zip: directory
	cd $(TOPDIR)/r4ids.cn_Multi-Function_1.51d && zip -r -X $(OUT)/$(BASE)/$@ *

r4ids.cn_non-3DS_Multi-Function_1.51d.zip: directory
	cd $(TOPDIR)/r4ids.cn_non-3DS_Multi-Function_1.51d && zip -r -X $(OUT)/$(BASE)/$@ *
