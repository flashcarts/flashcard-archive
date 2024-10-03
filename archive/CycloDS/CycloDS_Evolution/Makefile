.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := CycloDS/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory CycloDS_Evolution_2.3.zip old

directory:
	mkdir -p $(OUT)/$(BASE)

CycloDS_Evolution_2.3.zip: directory
	cd CycloDS_Evolution_2.3 && zip -r $(OUT)/$(BASE)/$@ *

old: directory
	make -C $@
