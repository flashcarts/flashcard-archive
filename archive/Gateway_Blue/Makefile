.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory old Gateway_Blue_Wood_R4_1.62.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

Gateway_Blue_Wood_R4_1.62.zip: directory
	mkdir tmp;cp -r Gateway_Blue_Wood_R4_1.62/* $(COMMON)/Wood_R4Li_1.62/* tmp
	cd tmp && zip -r $(OUT)/$(BASE)/$@ *
	cd $(TOPDIR); rm -rf tmp

old: directory
	make -C $@

extdata: directory
	cp README.txt $(OUT)/$(BASE)
