.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4i-d.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i-d.com_Kernel_1.41.zip r4i-d.com_Wood_1.13.1.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

r4i-d.com_Kernel_1.41.zip: directory
	cd $(TOPDIR)/r4i-d.com_Kernel_1.41 && zip -r $(OUT)/$(BASE)/$@ *

r4i-d.com_Wood_1.13.1.zip: directory
	cd $(TOPDIR)/r4i-d.com_Wood_1.13.1 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp readme.txt $(OUT)/$(BASE)
