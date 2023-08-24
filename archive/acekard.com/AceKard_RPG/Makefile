.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := acekard.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory Acekard_RPG_Wood_RPG_1.62.zip old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

Acekard_RPG_Wood_RPG_1.62.zip: directory
	cd Acekard_RPG_Wood_RPG_1.62 && zip -r -X $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@

extdata: directory
	cp acekard*.jpg README.txt $(OUT)/$(BASE)
