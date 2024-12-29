##############
# parameters #
##############
# do you want to see the commands given?
DO_MKDBG:=0
# do dependency on the makefile itself?
DO_ALLDEP:=1
# do you want to lint perl files?
DO_LINT:=1
# do you want to comple the perl files?
DO_COMPILE:=1

########
# code #
########
ALL:=
ALL_PL:=$(shell find src -type f -and -name "*.pl")
ALL_LINT:=$(addprefix out/,$(addsuffix .lint, $(basename $(ALL_PL))))
ALL_COMPILE:=$(addprefix out/,$(addsuffix .compile, $(basename $(ALL_PL))))

ifeq ($(DO_LINT),1)
ALL+=$(ALL_LINT)
endif # DO_LINT

ifeq ($(DO_COMPILE),1)
ALL+=$(ALL_COMPILE)
endif # DO_COMPILE

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
	$(info ALL_COMPILE is $(ALL_COMPILE))

.PHONY: check
check:
	-$(Q)git grep -L "use strict" -- "src/**/*.pl" "src/**/*.pm"
	-$(Q)git grep -L "use warnings" "src/**/*.pl" "src/**/*.pm"
	-$(Q)git grep -L "=pod" "src/**/*.pl" "src/**/*.pm"
	-$(Q)git grep -L "=cut" "src/**/*.pl" "src/**/*.pm"

.PHONY: check_permissions
check_permissions:
	$(Q)find src -type f -and -name "*.pl" -and -not -perm 755
	$(Q)find src -type f -and -name "*.pm" -and -not -perm 644

.PHONY: clean
clean:
	$(Q)rm -f $(ALL)

.PHONY: clean_hard
clean_hard:
	$(Q)git clean -qffxd

.PHONY: count
count:
	$(Q)find src -name "*.pl" | wc -l
	$(Q)find out -name "*.lint" | wc -l

############
# patterns #
############
$(ALL_LINT): out/%.lint: %.pl scripts/wrapper_lint.py
	$(info doing [$@])
	$(Q)scripts/wrapper_lint.py $<
	$(Q)pymakehelper touch_mkdir $@
$(ALL_COMPILE): out/%.compile: %.pl scripts/wrapper_compiler.py
	$(info doing [$@])
	$(Q)scripts/wrapper_compiler.py $<
	$(Q)pymakehelper touch_mkdir $@

##########
# alldep #
##########
ifeq ($(DO_ALLDEP),1)
.EXTRA_PREREQS+=$(foreach mk, ${MAKEFILE_LIST},$(abspath ${mk}))
endif # DO_ALLDEP
