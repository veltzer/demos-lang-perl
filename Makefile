include /usr/share/templar/make/Makefile

ALL:=$(TEMPLAR_ALL)
ALL_DEP:=$(TEMPLAR_ALL_DEP)

.PHONY: check
check:
	grep -L "use strict" -r src/examples
	grep -L "use warnings" -r src/examples
	grep -L "=head" -r src/examples
	grep -L "=cut" -r src/examples
