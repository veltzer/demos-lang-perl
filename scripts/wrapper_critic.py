#!/usr/bin/env python

"""
This is a wrapper for the following make command:
    $(Q)perlcritic $<

Why do we need this wrapper?
- it has bad error codes
- it prints too much to the screen.
"""

import sys

from wrapper_common import run_filtered


def main():
    """ main entry point """
    run_filtered(["perlcritic", sys.argv[1]], sys.argv[1], prefix_streams=True)


if __name__ == "__main__":
    main()
