##############
# parameters #
##############
# do you want to see the commands given?
DO_MKDBG:=0
# do dependency on the makefile itself?
DO_ALLDEP:=1
# do you want to lint perl files?
DO_LINT:=1

########
# code #
########
ALL:=
ALL_PL:=$(shell find src -type f -and -name "*.pl")
ALL_LINT:=$(addprefix out/,$(addsuffix .lint, $(basename $(ALL_PL))))

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

.PHONY: clean
clean:
	$(Q)rm -f $(ALL)

.PHONY: clean_hard
clean_hard:
	$(Q)git clean -qffxd

.PHONY: count
count:
	find src -name "*.pl" | wc -l
	find out -name "*.lint" | wc -l

############
# patterns #
############
$(ALL_LINT): out/%.lint: %.pl scripts/wrapper_compiler.py
	$(info doing [$@])
	$(Q)scripts/wrapper_compiler.py $<
	$(Q)pymakehelper touch_mkdir $@
#perl -Mstrict -Mdiagnostics -cw $<
# $(Q)scripts/wrapper_lint.py $<

##########
# alldep #
##########
ifeq ($(DO_ALLDEP),1)
.EXTRA_PREREQS+=$(foreach mk, ${MAKEFILE_LIST},$(abspath ${mk}))
endif # DO_ALLDEP
