.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := CycloDS/CycloDS_Evolution/$(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../../../out
export COMMON := $(TOPDIR)/../../../../common-kernels

package: directory CycloDS_Evolution_1.4-BETA-3.zip CycloDS_Evolution_1.4.zip CycloDS_Evolution_1.5.zip CycloDS_Evolution_1.41.zip

directory:
	mkdir -p $(OUT)/$(BASE)

CycloDS_Evolution_1.4-BETA-3.zip: directory
	cd $(TOPDIR)/CycloDS_Evolution_1.4-BETA-3 && zip -r $(OUT)/$(BASE)/$@ *

CycloDS_Evolution_1.4.zip: directory
	cd $(TOPDIR)/CycloDS_Evolution_1.4 && zip -r $(OUT)/$(BASE)/$@ *

CycloDS_Evolution_1.41.zip: directory
	cd $(TOPDIR)/CycloDS_Evolution_1.41 && zip -r $(OUT)/$(BASE)/$@ *

CycloDS_Evolution_1.5.zip: directory
	cd $(TOPDIR)/CycloDS_Evolution_1.5.zip && zip -r $(OUT)/$(BASE)/$@ *
