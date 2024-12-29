#!/usr/bin/perl -w

use PeopleDB;

my($db) = PeopleDB::load_db("peopledb.data");
PeopleDB::print_db($db);
