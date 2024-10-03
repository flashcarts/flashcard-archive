.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory DS-Xtreme_FWUpdate_v1.1.2-fixed.zip old

directory:
	mkdir -p $(OUT)/$(BASE)

DS-Xtreme_FWUpdate_v1.1.2-fixed.zip: directory
	cd $(TOPDIR)/DS-Xtreme_FWUpdate_v1.1.2-fixed && zip -r $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@
