include /usr/share/templar/make/Makefile

ALL:=$(TEMPLAR_ALL)
ALL_DEP:=$(TEMPLAR_ALL_DEP)

ALL_DEP+=tools.stamp
ALL+=tools.stamp

all: $(ALL)

tools.stamp: apt.yaml
	$(info doing [$@])
	@templar_cmd install_deps
	@make_helper touch-mkdir $@

.PHONY: check
check:
	@grep -L "use strict" -r src/examples
	@grep -L "use warnings" -r src/examples
	@grep -L "=head" -r src/examples
	@grep -L "=cut" -r src/examples
