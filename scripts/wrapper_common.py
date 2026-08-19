"""
Shared runner for the perl wrapper scripts.

Each wrapper runs a perl checker that has bad exit codes and prints too much:
this helper runs the command, hides the "... source OK" / "... syntax OK"
noise, prints everything else, and exits non-zero if anything else appeared.
"""

import subprocess
import sys


def run_filtered(args: list[str], target: str, prefix_streams: bool) -> None:
    """Run args, filter the OK lines for target, exit 1 on any other output."""
    with subprocess.Popen(
        args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=False,
    ) as p:
        errors = False
        assert p.stdout is not None and p.stderr is not None
        for name, stream in (("stdout", p.stdout), ("stderr", p.stderr)):
            for raw in stream:
                line = raw.decode().rstrip()
                if line in (f"{target} source OK", f"{target} syntax OK"):
                    continue
                errors = True
                if prefix_streams:
                    print(f"{name} line is [{line}]")
                else:
                    print(line)
    if errors:
        sys.exit(1)
