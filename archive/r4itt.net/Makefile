.PHONY: package r4itt.net_3DS_NEW_RTS r4itt.net_black

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory r4itt.net_3DS_NEW_RTS r4itt.net_black r4itt.net_original

directory:
	mkdir -p $(OUT)/$(BASE)

r4itt.net_3DS_NEW_RTS: directory
	make -C $@

r4itt.net_black: directory
	make -C $@

r4itt.net_original: directory
	make -C $@

extdata: directory
	cp README.txt $(OUT)/$(BASE)
