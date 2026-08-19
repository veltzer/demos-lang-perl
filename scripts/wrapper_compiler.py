#!/usr/bin/env python

"""
This is a wrapper for the following make command:
    perl -Mstrict -Mdiagnostics -cw $<

Why do we need this wrapper?
- it has bad error codes
- it prints too much to the screen.
"""

import os.path
import sys

from wrapper_common import run_filtered


def main():
    """ main entry point """
    run_filtered([
        "perl",
        "-Mstrict",
        "-Mdiagnostics",
        "-cw",
        "-I",
        os.path.dirname(sys.argv[1]),
        sys.argv[1],
    ], sys.argv[1], prefix_streams=False)


if __name__ == "__main__":
    main()
