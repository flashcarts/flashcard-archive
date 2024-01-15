.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4igold.cn/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4igold.cn_Kernel_1.9.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4igold.cn_Kernel_1.9.zip: directory
	cd $(TOPDIR)/r4igold.cn_Kernel_1.9 && zip -r $(OUT)/$(BASE)/$@ *
