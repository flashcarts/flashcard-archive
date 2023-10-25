.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := u2ds.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory U2DS_v1.7c_English.zip U2DS_BandBrosDX_savefix.zip

directory:
	mkdir -p $(OUT)/$(BASE)

U2DS_v1.7c_English.zip: directory
	cd $(TOPDIR)/U2DS_v1.7c_English && zip -r -X $(OUT)/$(BASE)/$@ *

U2DS_BandBrosDX_savefix.zip: directory
	cd $(TOPDIR)/U2DS_BandBrosDX_savefix && zip -r -X $(OUT)/$(BASE)/$@ *
