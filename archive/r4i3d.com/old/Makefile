.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := r4i3d.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory r4i3d.com_2013_Kernel_1.63.1.zip r4i3d.com_2014-2015_Kernel_1.70.1.zip r4i3d.com_NEW_Kernel_1.38.3.zip R4i3D.com_Kernel_1.4.1M.zip

directory:
	mkdir -p $(OUT)/$(BASE)

r4i3d.com_2013_Kernel_1.63.1.zip: directory
	cd $(TOPDIR)/r4i3d.com_2013_Kernel_1.63.1 && zip -r $(OUT)/$(BASE)/$@ *

r4i3d.com_2014-2015_Kernel_1.70.1.zip: directory
	cd $(TOPDIR)/r4i3d.com_2014-2015_Kernel_1.70.1 && zip -r $(OUT)/$(BASE)/$@ *

r4i3d.com_NEW_Kernel_1.38.3.zip: directory
	cd $(TOPDIR)/r4i3d.com_NEW_Kernel_1.38.3 && zip -r $(OUT)/$(BASE)/$@ *

R4i3D.com_Kernel_1.4.1M.zip: directory
	cd $(TOPDIR)/R4i3D.com_Kernel_1.4.1M && zip -r $(OUT)/$(BASE)/$@ *