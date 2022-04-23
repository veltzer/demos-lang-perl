ALL:=

all: $(ALL)
	@true

.PHONY: check
check:
	@grep -L "use strict" -r src/examples
	@grep -L "use warnings" -r src/examples
	@grep -L "=head" -r src/examples
	@grep -L "=cut" -r src/examples
