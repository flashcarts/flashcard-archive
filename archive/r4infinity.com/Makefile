.PHONY: package directory original Dual-Core_i R4infinity_3

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory original Dual-Core_i R4infinity_3

directory:
	mkdir -p $(OUT)/$(BASE)

original:
	make -C $@

Dual-Core_i:
	make -C $@

R4infinity_3:
	make -C $@
