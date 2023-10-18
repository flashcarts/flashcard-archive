.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := pk3ds.org/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory pk3ds.org_Kernel_2.12.zip pk3ds.org_3DS_V2.2.0-4J_upgrade_package.zip pk3ds.org_DSi_V1.43_upgrade_package.zip

directory:
	mkdir -p $(OUT)/$(BASE)

pk3ds.org_3DS_V2.2.0-4J_upgrade_package.zip: directory
	cd $(TOPDIR)/pk3ds.org_3DS_V2.2.0-4J_upgrade_package && zip -r -X $(OUT)/$(BASE)/$@ *

pk3ds.org_DSi_V1.43_upgrade_package.zip: directory
	cd $(TOPDIR)/pk3ds.org_DSi_V1.43_upgrade_package && zip -r -X $(OUT)/$(BASE)/$@ *

pk3ds.org_Kernel_2.12.zip: directory
	cd $(TOPDIR)/pk3ds.org_Kernel_2.12 && zip -r -X $(OUT)/$(BASE)/$@ *
	