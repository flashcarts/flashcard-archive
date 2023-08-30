.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory BL2CK_1.31.0.zip r4ids.com_Original_Wood_R4_1.54.zip r4ids.com_Gold_2.0_AKAIO_1.8.6a.zip r4ids.com_Gold_Plus_Kernel_3.0.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/R4iTT/Makefile

r4ids.com_Original_Wood_R4_1.54.zip: directory
	cd $(TOPDIR)/../r4ids.cn/r4ids.cn_non-3DS_Wood_R4_1.54 && zip -r -X $(OUT)/$(BASE)/$@ *

r4ids.com_Gold_2.0_AKAIO_1.8.6a.zip: directory
	cd $(TOPDIR)/r4ids.com_Gold_2.0_AKAIO_1.8.6a && zip -r -X $(OUT)/$(BASE)/$@ *

r4ids.com_Gold_Plus_Kernel_3.0.zip: directory
	cd $(TOPDIR)/r4ids.com_Gold_Plus_Kernel_3.0 && zip -r -X $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@

extdata: directory
	cp -r README.txt $(OUT)/$(BASE)
