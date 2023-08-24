.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory EZ-Flash_V+_oldVi_Kernel_2.0RC20.zip EZ-Flash_Vi_705_805_Kernel_3.0OB8.zip old

directory:
	mkdir -p $(OUT)/$(BASE)

EZ-Flash_V+_oldVi_Kernel_2.0RC20.zip: directory
	cd $(TOPDIR)/EZ-Flash_V+_oldVi_Kernel_2.0RC20 && zip -r -X $(OUT)/$(BASE)/$@ *

EZ-Flash_Vi_705_805_Kernel_3.0OB8.zip: directory
	cd $(TOPDIR)/EZ-Flash_Vi_705_805_Kernel_3.0OB8 && zip -r -X $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@
