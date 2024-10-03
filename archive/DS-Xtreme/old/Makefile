.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := DS-Xtreme/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory DS-Xtreme_FWUpdate_v1.1.2.zip

directory:
	mkdir -p $(OUT)/$(BASE)

DS-Xtreme_FWUpdate_v1.1.2.zip: directory
	cd $(TOPDIR)/DS-Xtreme_FWUpdate_v1.1.2 && zip -r $(OUT)/$(BASE)/$@ *
