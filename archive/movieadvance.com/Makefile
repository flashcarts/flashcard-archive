.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory movieadvance.com_GBA_Movie_Player_CF_e19.zip

directory:
	mkdir -p $(OUT)/$(BASE)

movieadvance.com_GBA_Movie_Player_CF_e19.zip: directory
	cd $(TOPDIR)/movieadvance.com_GBA_Movie_Player_CF_e19 && zip -r $(OUT)/$(BASE)/$@ *
