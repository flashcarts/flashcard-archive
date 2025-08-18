.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := EZ-Flash/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory EZ-Flash_V_Kernel_1.68.zip EZ-Flash_V_Kernel_1.70.zip EZ-Flash_V_Kernel_1.80.zip EZ-Flash_V_Kernel_1.82.zip EZ-Flash_V_Kernel_1.83.zip EZ-Flash_V_Kernel_1.84.zip EZ-Flash_V_Kernel_1.86.zip

directory:
	mkdir -p $(OUT)/$(BASE)

EZ-Flash_V_Kernel_1.68.zip: directory
	cd $(TOPDIR)/EZ-Flash_V_Kernel_1.80 && zip -r $(OUT)/$(BASE)/$@ *

EZ-Flash_V_Kernel_1.70.zip: directory
	cd $(TOPDIR)/EZ-Flash_V_Kernel_1.80 && zip -r $(OUT)/$(BASE)/$@ *

EZ-Flash_V_Kernel_1.80.zip: directory
	cd $(TOPDIR)/EZ-Flash_V_Kernel_1.80 && zip -r $(OUT)/$(BASE)/$@ *

EZ-Flash_V_Kernel_1.82.zip: directory
	cd $(TOPDIR)/EZ-Flash_V_Kernel_1.82 && zip -r $(OUT)/$(BASE)/$@ *

EZ-Flash_V_Kernel_1.83.zip: directory
	cd $(TOPDIR)/EZ-Flash_V_Kernel_1.83 && zip -r $(OUT)/$(BASE)/$@ *

EZ-Flash_V_Kernel_1.84.zip: directory
	cd $(TOPDIR)/EZ-Flash_V_Kernel_1.84 && zip -r $(OUT)/$(BASE)/$@ *

EZ-Flash_V_Kernel_1.86.zip: directory
	cd $(TOPDIR)/EZ-Flash_V_Kernel_1.86 && zip -r $(OUT)/$(BASE)/$@ *
