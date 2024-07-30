.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := pk3ds.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory pk3ds.com_Kernel_2.12.zip pk3ds.com_3DS_V2.2.0-4J_upgrade_package.zip pk3ds.com_DSi_V1.43_upgrade_package.zip

directory:
	mkdir -p $(OUT)/$(BASE)

pk3ds.com_3DS_V2.2.0-4J_upgrade_package.zip: directory
	cd $(TOPDIR)/pk3ds.com_3DS_V2.2.0-4J_upgrade_package && zip -r $(OUT)/$(BASE)/$@ *

pk3ds.com_DSi_V1.43_upgrade_package.zip: directory
	cd $(TOPDIR)/pk3ds.com_DSi_V1.43_upgrade_package && zip -r $(OUT)/$(BASE)/$@ *

pk3ds.com_Kernel_2.12.zip: directory
	cd $(TOPDIR)/pk3ds.com_Kernel_2.12 && zip -r $(OUT)/$(BASE)/$@ *
	