##############
# parameters #
##############
# do dependency on the makefile itself?
DO_ALLDEP:=1
# do you want to lint perl files?
DO_LINT:=0
# do you want to see the commands given?
DO_MKDBG:=0

########
# code #
########
ALL:=
ALL_PL:=$(shell find src -name "*.pl")
ALL_LINT:=$(addprefix out/,$(addsuffix .lint, $(basename $(ALL_PL))))

ifeq ($(DO_ALLDEP),1)
.EXTRA_PREREQS+=$(foreach mk, ${MAKEFILE_LIST},$(abspath ${mk}))
endif # DO_ALLDEP

ifeq ($(DO_LINT),1)
ALL+=$(ALL_LINT)
endif # DO_LINT

ifeq ($(DO_MKDBG),1)
Q=
# we are not silent in this branch
else # DO_MKDBG
Q=@
#.SILENT:
endif # DO_MKDBG

#########
# rules #
#########
.PHONY: all
all: $(ALL)
	@true

.PHONY: debug
debug:
	$(info ALL_PL is $(ALL_PL))
	$(info ALL_LINT is $(ALL_LINT))

.PHONY: check
check:
	@grep -L "use strict" -r src/examples
	@grep -L "use warnings" -r src/examples
	@grep -L "=head" -r src/examples
	@grep -L "=cut" -r src/examples

############
# patterns #
############
$(ALL_LINT): out/%.lint: %.pl
	$(info doing [$@])
	$(Q)perl -Mstrict -Mdiagnostics -cw $<
	$(Q)pymakehelper touch_mkdir $@
