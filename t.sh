#!/bin/bash
hash_config=$[2**$1]
echo $hash_config
gsahre_config=$1
hodge_config1=$1
hodge_config2=$2
for file in ./tests/bin/*; do
  target=${file##*/}
  echo $file
  ./r.sh hash $hash_config $target >./test_report/hash_$1_$target 2>&1 
  ./r.sh gshare $gsahre_config $target >./test_report/gshare_$1_$target 2>&1
  ./r.sh hodge $hodge_config1 $hodge_config2 $target >./test_report/hodge_$1_$2_$target 2>&1
done
