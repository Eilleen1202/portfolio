#!/bin/bash
# script : make testcase by @eilleen1202
# usage : ./maketst arguments in out
# effect : Create I/O test files with
# arguments in .args, input in .in, output in .expected
#       * filename is provided later in stdin

args=$1
input=$2
output=$3

echo -n "Name the testcase: "
read filename
echo $output > $filename.expect
echo $args > $filename.args
echo $in > $filename.in

