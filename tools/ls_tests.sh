#!/bin/bash
# script : list tests by @eilleen1202
# usage : /ls_tests.sh name
# effect : Create name.txt which contains a list of filename 
# for all testcases in current directory
# 	* filenames are recognized by .expect

ls | egrep ".\.expect" | cut -d '.' -f 1 > ${1}.txt
