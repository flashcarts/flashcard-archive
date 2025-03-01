.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := ace3ds.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory X9TF_Loader_v1.2_beta.zip

directory:
	mkdir -p $(OUT)/$(BASE)

X9TF_Loader_v1.2_beta.zip: directory
	cd $(TOPDIR)/X9TF_Loader_v1.2_beta && zip -r $(OUT)/$(BASE)/$@ *
