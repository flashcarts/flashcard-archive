.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4ids.cn/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4ids.com_Original_Multi-Function_1.51d.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4ids.com_Original_Multi-Function_1.51d.zip: directory
	cd $(TOPDIR)/r4ids.com_Original_Multi-Function_1.51d && zip -r $(OUT)/$(BASE)/$@ *
