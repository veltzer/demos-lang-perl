include /usr/share/templar/Makefile

ALL:=$(TEMPLAR_ALL)
ALL_DEP:=$(TEMPLAR_ALL_DEP)

.DEFAULT_GOAL=all
.PHONY: all
all: $(ALL)
