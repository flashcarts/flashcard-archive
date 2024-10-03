.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory BL2CK_1.31.0.zip BL2CK_1.31.0_Amaze3DS.zip BL2CK_1.31.0_EDGEi.zip BL2CK_1.31.0_r4dspro.com.zip

directory:
	mkdir -p $(OUT)/$(BASE)

include $(COMMON)/BL2CK/R4iTT/Makefile
include $(COMMON)/BL2CK/Amaze3DS/Makefile
include $(COMMON)/BL2CK/EDGEi/Makefile
include $(COMMON)/BL2CK/r4dspro.com/Makefile
