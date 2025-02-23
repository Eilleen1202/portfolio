#!/bin/bash
# test codes : I/O testing harness by @eilleen1202
# usage : ./test_code.sh/ (nameof)script (filenameof)tests
# effect : Do I/O testing from a list of test names
#          Write on stdout


script=$1
test_names=$2

for test in $(cat ${test_names}); do
    if [ ! -r ${test}.args ]; then
        echo "${test} does not exist."
    elif [ $(../tools/excute ${test}.args) < ${test}.in == $(cat ${tes}) ]; then
        echo "test ${test} succeed!"
    else
        echo "test ${test} failed. actual result is: "
    fi
done