.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4iplat.com_Kernel_1.34.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4iplat.com_Kernel_1.34.zip: directory
	cd $(TOPDIR)/r4iplat.com_Kernel_1.34 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
