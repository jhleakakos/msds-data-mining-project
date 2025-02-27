#!/bin/zsh

dest_dir="../data/pg_data/"

rm ./db/col_headers.txt

# Snag column headers from data files instead of dictionaries because of mismatches
for dir in ../data/*/
do

  d=${dir}

  if [ ${d} = ${dest_dir} ]
  then
    continue
  fi

  for csv in ${d}*
  do
    echo ${csv} >> ./db/col_headers.txt
    sed -n 1p ${csv} >> ./db/col_headers.txt
  done
done


