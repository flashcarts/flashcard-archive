.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory M3_YSMenu_autoboot_package.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

M3_YSMenu_autoboot_package.zip: directory
	cd $(TOPDIR)/M3_YSMenu_autoboot_package && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp -r DEMON_common $(OUT)/$(BASE)
	cp -r R4SDHC_common $(OUT)/$(BASE)
