.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory BL2CK_1.30.4_EDGEi.zip old

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/EDGEi/Makefile

old: directory
	make -C $@
