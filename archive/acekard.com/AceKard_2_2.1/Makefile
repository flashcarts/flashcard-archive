.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := acekard.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory AKAIO_1.9.0-20121129.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

AKAIO_1.9.0-20121129.zip: directory
	cd $(COMMON)/AKAIO_1.9.0-20121129 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp acekard*.jpg README.txt $(OUT)/$(BASE)
