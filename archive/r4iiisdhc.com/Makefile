.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4iiisdhc.com_Kernel_3.07.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4iiisdhc.com_Kernel_3.07.zip: directory
	cd $(TOPDIR)/r4iiisdhc.com_Kernel_3.07 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
