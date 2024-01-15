.PHONY: package

export TOPDIR := $(shell pwd $(CURDIR))
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory Action_Replay_DSi_non-3DS_FWUpdate_v1.25.zip

directory:
	mkdir -p $(OUT)/$(BASE)

Action_Replay_DSi_non-3DS_FWUpdate_v1.25.zip: directory
	cd $(TOPDIR)/Action_Replay_DSi_non-3DS_FWUpdate_v1.25 && zip -r $(OUT)/$(BASE)/$@ *
