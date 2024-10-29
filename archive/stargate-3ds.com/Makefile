.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory stargate-3ds.com_Kernel_1.0.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

stargate-3ds.com_Kernel_1.0.zip: directory
	cd $(TOPDIR)/stargate-3ds.com_Kernel_1.0 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp -r SG_Launcher_CFW README.txt $(OUT)/$(BASE)
