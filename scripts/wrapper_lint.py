#!/usr/bin/env python

"""
This is a wrapper for the following make command:
    $(Q)perl -I src/unsorted -I src/examples_standalone/oop_basic -MO=Lint $<

Why do we need this wrapper?
- it has bad error codes
- it prints too much to the screen.
"""

import sys
import subprocess


def main():
    """ main entry point """
    p = subprocess.Popen([
        "perl",
        "-I",
        "src/unsorted",
        "-I",
        "src/examples_standalone/oop_basic",
        "-MO=Lint",
        sys.argv[1],
    ], stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=False)
    errors = False
    for line in p.stdout:
        line = line.decode().rstrip()
        # this is a warning or error
        errors = True
        print(f"stdout line is {line}")
    for line in p.stderr:
        line = line.decode().rstrip()
        if line==f"{sys.argv[1]} syntax OK":
            continue
        # this is a warning or error
        errors = True
        print(f"stderr line is {line}")
    if errors:
        sys.exit(1)


if __name__ == "__main__":
    main()
