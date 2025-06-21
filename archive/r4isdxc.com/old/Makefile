.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4isdxc.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory R4isdxc_English_V2.06.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

R4isdxc_English_V2.06.zip: directory
	cd $(TOPDIR)/R4isdxc_English_V2.06 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp readme.txt $(OUT)/$(BASE)
