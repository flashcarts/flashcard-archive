.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := acekard.com/AceKard_RPG/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../../out
export COMMON := $(TOPDIR)/../../../../common-kernels

package: directory AceKard_RPG_akMenu_4.11.zip

directory:
	mkdir -p $(OUT)/$(BASE)

AceKard_RPG_akMenu_4.11.zip: directory
	cd $(TOPDIR)/AceKard_RPG_akMenu_4.11 && zip -r $(OUT)/$(BASE)/$@ *
