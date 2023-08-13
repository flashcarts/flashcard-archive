.PHONY: package DSONE DSONE_SDHC_DSONEi DSTWO Lite_Rumble

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory DSONE DSONE_SDHC_DSONEi DSTWO Lite_Rumble extdata

directory:
	mkdir -p $(OUT)/$(BASE)

DSONE: directory
	make -C $@

DSONE_SDHC_DSONEi: directory
	make -C $@

DSTWO: directory
	make -C $@

Lite_Rumble: directory
	make -C $@

extdata: directory
	cp README.txt $(OUT)/$(BASE)
