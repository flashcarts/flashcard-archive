.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := r4li.com/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../out
export COMMON := $(TOPDIR)/../../../common-kernels

package: directory R4Li_139_English.zip

directory:
	mkdir -p $(OUT)/$(BASE)

R4Li_139_English.zip: directory
	cd $(TOPDIR)/R4Li_139_English && zip -r $(OUT)/$(BASE)/$@ *
