include /usr/share/templar/make/Makefile

ALL:=$(TEMPLAR_ALL)
ALL_DEP:=$(TEMPLAR_ALL_DEP)

.DEFAULT_GOAL=all
.PHONY: all
all: $(ALL)
	$(info doing [$@])
