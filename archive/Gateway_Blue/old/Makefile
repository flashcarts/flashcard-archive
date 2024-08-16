.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := Gateway_Blue/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory Gateway_Blue_Wood_R4_1.62_old.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

Gateway_Blue_Wood_R4_1.62_old.zip: directory
	mkdir tmp;cp -r Gateway_Blue_Wood_R4_1.62_old/* $(COMMON)/Wood_R4Li_1.62/* tmp
	cd tmp && zip -r $(OUT)/$(BASE)/$@ *
	cd $(TOPDIR); rm -rf tmp

extdata: directory
	cp README.txt $(OUT)/$(BASE)
