.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory 3DSLink_DS_V4.0B2.zip 3dslink.com_Blue_Kernel_1.64.zip Boot_Card_Blue_Card_V4.0B1.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

3DSLink_DS_V4.0B2.zip: directory
	cd $(TOPDIR)/3DSLink_DS_V4.0B2 && zip -r -X $(OUT)/$(BASE)/$@ *

Boot_Card_Blue_Card_V4.0B1.zip: directory
	cd $(TOPDIR)/Boot_Card_Blue_Card_V4.0B1 && zip -r -X $(OUT)/$(BASE)/$@ *

3dslink.com_Blue_Kernel_1.64.zip: directory
	cd $(TOPDIR)/3dslink.com_Blue_Kernel_1.64 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp 3dslinkblue.jpg $(OUT)/$(BASE)
