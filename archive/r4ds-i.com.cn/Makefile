.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4ds-i.com.cn_Kernel_1.27.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4ds-i.com.cn_Kernel_1.27.zip: directory
	cd $(TOPDIR)/r4ds-i.com.cn_Kernel_1.27 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
