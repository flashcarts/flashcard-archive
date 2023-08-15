.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory BL2CK_1.30.4.zip BL2CK_1.30.4_Amaze3DS.zip BL2CK_1.30.4_EDGEi.zip

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/R4iTT/Makefile
include $(COMMON)/BL2CK/Amaze3DS/Makefile
include $(COMMON)/BL2CK/EDGEi/Makefile
