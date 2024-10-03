.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4i.cn_Kernel_1.60.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4i.cn_Kernel_1.60.zip: directory
	cd $(TOPDIR)/r4i.cn_Kernel_1.60 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
