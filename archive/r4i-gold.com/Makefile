.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4i-gold.com_Pro_2013_Wood_R4_1.51.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-gold.com_Pro_2013_Wood_R4_1.51.zip: directory
	cd $(TOPDIR)/r4i-gold.com_Pro_2013_Wood_R4_1.51 && zip -r $(OUT)/$(BASE)/$@ *
