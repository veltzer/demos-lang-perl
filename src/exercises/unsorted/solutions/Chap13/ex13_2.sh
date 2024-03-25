#!/bin/bash -e
# Exercise 13.2

# Note: Run this from the command line with an appropriate filelist

# On a Unix system:
perl -p -e '$total += $_; END { print("\nTotal: $total\n"); }'

# On a Windows system:
perl -p -e "$total += $_; END { print(\"\nTotal: $total\n\"); }"
