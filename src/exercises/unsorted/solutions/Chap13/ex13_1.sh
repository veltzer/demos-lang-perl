#!/usr/bin/bash

# Exercise 13.1
# Note: Run this from the command line with an appropriate pattern and filelist
# On a Unix system:
perl -n -e 'BEGIN { $pattern = shift @ARGV; }
	print if (/$pattern/);' pattern filelist

# On a Windows system:
perl -n -e "BEGIN { $pattern = shift @ARGV; }
	print if (/$pattern/);" pattern filelist
