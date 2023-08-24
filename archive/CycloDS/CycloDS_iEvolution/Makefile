.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := CycloDS/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory CycloDS_iEvolution_2.3.zip

directory:
	mkdir -p $(OUT)/$(BASE)

CycloDS_iEvolution_2.3.zip: directory
	cd CycloDS_iEvolution_2.3 && zip -r -X $(OUT)/$(BASE)/$@ *
