.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4ds-i.com.cn/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out/
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4ds-i.com.cn_Kernel_1.27.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4ds-i.com.cn_Kernel_1.27.zip: directory
	cd $(TOPDIR)/r4ds-i.com.cn_Kernel_1.27 && zip -r $(OUT)/$(BASE)/$@ *
