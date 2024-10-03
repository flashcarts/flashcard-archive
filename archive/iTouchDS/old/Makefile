.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := iTouchDS/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory iTouchDS_Kernel_1.9.zip iTouchDS_Kernel_2.1.zip iTouchDS_Kernel_3.9a.zip

directory:
	mkdir -p $(OUT)/$(BASE)

iTouchDS_Kernel_1.9.zip: directory
	cd $(TOPDIR)/iTouchDS_Kernel_1.9 && zip -r $(OUT)/$(BASE)/$@ *

iTouchDS_Kernel_2.1.zip: directory
	cd $(TOPDIR)/iTouchDS_Kernel_2.1 && zip -r $(OUT)/$(BASE)/$@ *

iTouchDS_Kernel_3.9a.zip: directory
	cd $(TOPDIR)/iTouchDS_Kernel_3.9a && zip -r $(OUT)/$(BASE)/$@ *
