.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory BL2CK_1.31.0_r4dspro.com.zip r4iplat.com_Kernel_1.34.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/r4dspro.com/Makefile

r4iplat.com_Kernel_1.34.zip: directory
	cd $(TOPDIR)/r4iplat.com_Kernel_1.34 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
