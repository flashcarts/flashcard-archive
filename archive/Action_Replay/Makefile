.PHONY: package

export TOPDIR := $(CURDIR)
export BASE   := $(shell basename $(CURDIR))
export OUT    := $(TOPDIR)/../../out
export COMMON := $(TOPDIR)/../../common-kernels

package: directory Action_Replay_DS_and_Media_Edition.zip Action_Replay_DSi_and_3DS.zip

directory:
	mkdir -p $(OUT)/$(BASE)

Action_Replay_DS_and_Media_Edition.zip: directory
	cd $(TOPDIR)/Action_Replay_DS_and_Media_Edition && zip -r $(OUT)/$(BASE)/$@ *

Action_Replay_DSi_and_3DS.zip: directory
	cd $(TOPDIR)/Action_Replay_DSi_and_3DS && zip -r $(OUT)/$(BASE)/$@ *
