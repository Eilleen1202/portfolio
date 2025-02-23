This text file documents the purpose and usage of tools:
 
:: backup.sh ::
#!/bin/bash
# script : make backup files by @eilleen1202
# usage : ./backup.sh target_path(optional/origin) location(placeto make a backup folder) name(of zipfile)
# effect : Create or modify in readme.txt and zip file named name
# Ensure the target path ends with a slash
 
:: compile ::
#!/bin/bash
# usage : ./compile exec [.in] [.args] file.{c,o} [compiler arguments]
# effect : compile files
#          Write on stderr
#else
 
:: excute ::
# script : excute by @eilleen1202
# usage : /excute filename directory(optional)
# effect : excute the script filename using parameters. 
# If permission is not given, add excution permission to all users. 
 
:: ls_tests.sh ::
#!/bin/bash
# script : list tests by @eilleen1202
# usage : /ls_tests.sh name
# effect : Create name.txt which contains a list of filename 
# for all testcases in current directory
# 	* filenames are recognized by .expect
 
:: maketst.sh ::
#!/bin/bash
# script : make testcase by @eilleen1202
# usage : ./maketst arguments in out
# effect : Create I/O test files with
# arguments in .args, input in .in, output in .expected
#       * filename is provided later in stdin
 
:: test_code.sh ::
#!/bin/bash
# test codes : I/O testing harness by @eilleen1202
# usage : ./test_code.sh/ (nameof)script (filenameof)tests
# effect : Do I/O testing from a list of test names
#          Write on stdout
