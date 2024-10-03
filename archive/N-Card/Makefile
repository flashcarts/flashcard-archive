.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory N-Card_FW_2.55_v27.zip

directory:
	mkdir -p $(OUT)/$(BASE)

N-Card_FW_2.55_v27.zip: directory
	cd $(TOPDIR)/N-Card_FW_2.55_v27 && zip -r $(OUT)/$(BASE)/$@ *
