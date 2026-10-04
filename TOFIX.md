# TOFIX

Findings from a code scan on 2026-10-04.

## High

- `src/exercises/unsorted/solutions/Chap15/string.pm:5` - `use strict` is missing its semicolon (`use strict` / `use warnings;` on two lines), so the module fails to compile (`perl -c`: "use" not allowed in expression). Same in `src/exercises/unsorted/solutions/Chap16/rectangle.pm:3`. Both were introduced by the mechanical "another lint round" commit (98a2c78). Add the semicolons; then declare `our @ISA`/`our @EXPORT` (`string.pm:10-11`) so the module also passes under strict.
- `src/exercises/unsorted/solutions/Chap16/box.pm:11` - `@ISA = (rectangle);` fails under the `use strict` added above it (undeclared `@ISA`, bareword `rectangle`), so the solution does not compile. Use `our @ISA = ('rectangle');` (or `use parent -norequire, 'rectangle';`).

## Medium

- `rsconstruct.toml:67` - perlcritic only checks `.pl` (`src_extensions = [".pl"]`), so the `.pm` modules under `src/` are never checked, which is how the three broken solution modules above went unnoticed. Add `.pm` to the checked extensions (and/or a `perl -c` compile check).
- `src/unsorted/Server.pl` - `Server.pl` and `server.pl` differ only in case (and have different content), so a checkout on a case-insensitive filesystem (macOS, Windows) silently loses one of them. Rename one (e.g. `server_pod.pl`).
- `scripts/wrapper_common.py:1` - the `wrapper_compiler.py`, `wrapper_critic.py`, `wrapper_lint.py` wrappers and their shared helper are leftovers from the removed Makefile (their docstrings still say "wrapper for the following make command"); nothing references them now that `rsconstruct.toml:65` runs perlcritic directly. Delete `scripts/`, and drop `"scripts"` from the ruff/mypy/shellcheck `src_dirs` (`rsconstruct.toml:41,45,50`).

## Low

- `doc/TODO.txt:1` - "pass linting with -MO=Lint, do this by lighting the flag in the Makefile": there is no Makefile any more. Rephrase in terms of rsconstruct or drop it; `doc/DONE.txt` similarly describes Makefile-era lint steps.
- `src/examples_standalone/multi_script/calc` - this example (and its symlink `printer`) has no `.pl` extension, so neither perlcritic nor the README example count (`tera.snippets/main.md.tera:3`, pattern `src/**/*.pl`) sees it; it also lacks `use strict; use warnings;` unlike the rest of the examples.
