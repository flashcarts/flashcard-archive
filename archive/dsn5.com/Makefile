.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory dsn5.com_N5_Kernel_1.32.zip dsn5.com_N5i_Kernel_3.02.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

dsn5.com_N5_Kernel_1.32.zip: directory
	cd $(TOPDIR)/dsn5.com_N5_Kernel_1.32 && zip -r $(OUT)/$(BASE)/$@ *

dsn5.com_N5i_Kernel_3.02.zip: directory
	cd $(TOPDIR)/dsn5.com_N5i_Kernel_3.02 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp *.jpg README.txt $(OUT)/$(BASE)
