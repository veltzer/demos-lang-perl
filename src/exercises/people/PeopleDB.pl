#!/usr/bin/perl

use strict;
use warnings;

use PeopleDB;

my($db) = PeopleDB::load_db("peopledb.data");
PeopleDB::print_db($db);
