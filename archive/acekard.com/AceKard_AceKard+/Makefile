.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := acekard.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory AceKard_akMenu_4.07.zip AKManager103_AKMenu110_MS_ENG.zip

directory:
	mkdir -p $(OUT)/$(BASE)

AceKard_akMenu_4.07.zip: directory
	cd AceKard_akMenu_4.07 && zip -r $(OUT)/$(BASE)/$@ *

AKManager103_AKMenu110_MS_ENG.zip: directory
	cd AKManager103_AKMenu110_MS_ENG && zip -r $(OUT)/$(BASE)/$@ *