.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory old r4i-best.com_Green_Kernel_1.4.zip r4i-best.com_R4i-Best_R4i-Gold_Kernel_2.02.zip extdata

directory:
	mkdir -p $(OUT)/$(BASE)

old: directory
	make -C $@

r4i-best.com_Green_Kernel_1.4.zip: directory
	cd $(TOPDIR)/r4i-best.com_Green_Kernel_1.4 && zip -r $(OUT)/$(BASE)/$@ *

r4i-best.com_R4i-Best_R4i-Gold_Kernel_2.02.zip: directory
	cd $(TOPDIR)/r4i-best.com_R4i-Best_R4i-Gold_Kernel_2.02 && zip -r $(OUT)/$(BASE)/$@ *

extdata: directory
	cp README.txt $(OUT)/$(BASE)
