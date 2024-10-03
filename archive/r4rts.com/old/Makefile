.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4rts.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4rts.com_Kernel_2.8a.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4rts.com_Kernel_2.8a.zip: directory
	cd $(TOPDIR)/r4rts.com_Kernel_2.8a && zip -r $(OUT)/$(BASE)/$@ *
