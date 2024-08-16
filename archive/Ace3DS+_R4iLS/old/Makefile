.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := Ace3DS+_R4iLS/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory Ace3DS+_R4iLS_Wood_R4_1.62_old.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

Ace3DS+_R4iLS_Wood_R4_1.62_old.zip: directory
	mkdir tmp;cp -r Ace3DS+_R4iLS_Wood_R4_1.62_old/* $(COMMON)/Wood_R4Li_1.62/* tmp
	cd tmp && zip -r $(OUT)/$(BASE)/$@ *
	cd $(TOPDIR); rm -rf tmp

extdata: directory
	cp ace3dsplus.jpg README.txt $(OUT)/$(BASE)
