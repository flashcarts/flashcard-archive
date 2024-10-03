.PHONY: package directory CycloDS_Evolution CycloDS_iEvolution

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory CycloDS_Evolution CycloDS_iEvolution

directory:
	mkdir -p $(OUT)/$(BASE)

CycloDS_Evolution:
	make -C $@

CycloDS_iEvolution:
	make -C $@
