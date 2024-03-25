#!/usr/bin/perl -w

use PeopleDB;

$db = PeopleDB::load_db("peopledb.data");
PeopleDB::print_db($db);
