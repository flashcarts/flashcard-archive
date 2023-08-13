.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory ge.ndsi.in_GEi_Kernel_4.2.zip ge.ndsi.in_GEi_PRO_Kernel_5.1.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

ge.ndsi.in_GEi_Kernel_4.2.zip: directory
	cd $(TOPDIR)/ge.ndsi.in_GEi_Kernel_4.2 && zip -r $(OUT)/$(BASE)/$@ *

ge.ndsi.in_GEi_PRO_Kernel_5.1.zip: directory
	cd $(TOPDIR)/ge.ndsi.in_GEi_PRO_Kernel_5.1 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp *.jpg README.txt ge.ndsi.in_GEi_FWUpdate_1.4.4.nds $(OUT)/$(BASE)
