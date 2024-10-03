.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory m3adapter.com_GMP-Z003_Sakura_1.49a.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

m3adapter.com_GMP-Z003_Sakura_1.49a.zip: directory
	cd $(TOPDIR)/m3adapter.com_GMP-Z003_Sakura_1.49a && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
