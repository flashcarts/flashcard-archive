.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4plus.net_Kernel_2.01.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4plus.net_Kernel_2.01.zip: directory
	cd $(TOPDIR)/r4plus.net_Kernel_2.01 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
