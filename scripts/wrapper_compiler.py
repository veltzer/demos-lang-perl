#!/usr/bin/env python

"""
This is a wrapper for the following make command:
    perl -Mstrict -Mdiagnostics -cw $<

Why do we need this wrapper?
- it has bad error codes
- it prints too much to the screen.
"""

import sys
import subprocess
import os.path


def main():
    """ main entry point """
    args = [
        "perl",
        "-Mstrict",
        "-Mdiagnostics",
        "-cw",
        "-I",
        os.path.dirname(sys.argv[1]),
        sys.argv[1],
    ]
    # print(args)
    p = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=False)
    errors = False
    for line in p.stdout:
        line = line.decode().rstrip()
        if line==f"{sys.argv[1]} source OK":
            continue
        # this is a warning or error
        errors = True
        print(f"{line}")
    for line in p.stderr:
        line = line.decode().rstrip()
        if line==f"{sys.argv[1]} syntax OK":
            continue
        # this is a warning or error
        errors = True
        print(f"{line}")
    if errors:
        sys.exit(1)


if __name__ == "__main__":
    main()
