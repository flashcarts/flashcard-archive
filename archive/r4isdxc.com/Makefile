.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory old extdata

directory:
	mkdir -p $(OUT)/$(BASE)

old: directory
	make -C $@

extdata: directory
	cp readme.md $(OUT)/$(BASE)
