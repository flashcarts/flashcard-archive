.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4ultra.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory R4iUltra-En_1.56.zip

directory:
	mkdir -p $(OUT)/$(BASE)

R4iUltra-En_1.56.zip: directory
	cd $(TOPDIR)/R4iUltra-En_1.56 && zip -r -X $(OUT)/$(BASE)/$@ *