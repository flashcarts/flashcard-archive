.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory old Ace3DS+_R4iLS_Wood_R4_1.62.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

Ace3DS+_R4iLS_Wood_R4_1.62.zip: directory
	mkdir tmp;cp -r Ace3DS+_R4iLS_Wood_R4_1.62/* $(COMMON)/Wood_R4Li_1.62/* tmp
	cd tmp && zip -r $(OUT)/$(BASE)/$@ *
	cd $(TOPDIR); rm -rf tmp

old: directory
	make -C $@

extdata: directory
	cp ace3dsplus.jpg README.txt $(OUT)/$(BASE)
