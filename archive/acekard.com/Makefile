.PHONY: package directory AceKard_AceKard+ AceKard_2_2.1 AceKard_2i AceKard_RPG

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory AceKard_AceKard+ AceKard_2_2.1 AceKard_2i AceKard_RPG

directory:
	mkdir -p $(OUT)/$(BASE)

AceKard_AceKard+: directory
	make -C $@

AceKard_2_2.1: directory
	make -C $@

AceKard_2i: directory
	make -C $@

AceKard_RPG: directory
	make -C $@
