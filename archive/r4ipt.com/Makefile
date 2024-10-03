.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4ipt.com_Kernel_3.2.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4ipt.com_Kernel_3.2.zip: directory
	cd $(TOPDIR)/r4ipt.com_Kernel_3.2 && zip -r $(OUT)/$(BASE)/$@ *
