.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4dsl.net_r4iiinew.com_r4iii.com_iii.phqy.net/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4dsl.net_Kernel_3.13.zip r4dsl.net_Kernel_4.03.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4dsl.net_Kernel_3.13.zip: directory
	cd $(TOPDIR)/r4dsl.net_Kernel_3.13 && zip -r $(OUT)/$(BASE)/$@ *

r4dsl.net_Kernel_4.03.zip: directory
	cd $(TOPDIR)/r4dsl.net_Kernel_4.03 && zip -r $(OUT)/$(BASE)/$@ *
