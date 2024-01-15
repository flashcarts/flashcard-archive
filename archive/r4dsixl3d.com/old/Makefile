.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4dsixl3d.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4dsixl3d.com_Kernel_1.8.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4dsixl3d.com_Kernel_1.8.zip: directory
	cd $(TOPDIR)/r4dsixl3d.com_Kernel_1.8 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)