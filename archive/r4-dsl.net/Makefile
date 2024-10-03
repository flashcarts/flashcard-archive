.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4-dsl.net_R4-III_R4_Upgrade_Kernel_3.09.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4-dsl.net_R4-III_R4_Upgrade_Kernel_3.09.zip: directory
	cd $(TOPDIR)/r4-dsl.net_R4-III_R4_Upgrade_Kernel_3.09 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
