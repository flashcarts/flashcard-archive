.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4iasdhc.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4iasdhc.com_Kernel_1.4.1H.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4iasdhc.com_Kernel_1.4.1H.zip: directory
	cd $(TOPDIR)/r4iasdhc.com_Kernel_1.4.1H && zip -r $(OUT)/$(BASE)/$@ *
