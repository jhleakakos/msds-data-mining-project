#!/bin/zsh

# Utility script in case you want to copy the data files into pg_data and then perform any preprocessing before
# loading into the Docker container.

dest_dir="../data/pg_data/"

# Copy files into pg_data before modifying
for dir in ../data/*/
do

  d=${dir}

  if [ ${d} = ${dest_dir} ]
  then
    continue
  fi

  for csv in ${d}*
  do
#    cp -v ${csv} ${dest_dir}
    cp ${csv} ${dest_dir}
  done
done

# For each CSV in we copied over, remove its header row
for csv in ${dest_dir}*
do
#  sed -n 1p ${csv}
  sed -i '' 1d ${csv}
done

