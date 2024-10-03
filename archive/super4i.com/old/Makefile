.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := super4i.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out/
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory super4i.com_Kernel_v1.2.zip

directory:
	mkdir -p $(OUT)/$(BASE)

super4i.com_Kernel_v1.2.zip: directory
	cd $(TOPDIR)/super4i.com_Kernel_v1.2 && zip -r $(OUT)/$(BASE)/$@ *
