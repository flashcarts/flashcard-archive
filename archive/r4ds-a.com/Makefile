.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory R4-Advance_Kernel_1.22.zip R4-Advance_Kernel_1.27.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

R4-Advance_Kernel_1.22.zip: directory
	cd $(TOPDIR)/R4-Advance_Kernel_1.22 && zip -r -X $(OUT)/$(BASE)/$@ *

R4-Advance_Kernel_1.27.zip: directory
	cd $(TOPDIR)/R4-Advance_Kernel_1.27 && zip -r -X $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
