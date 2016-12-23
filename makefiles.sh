#!/bin/bash
for i in $(compgen -A variable | grep FILE_); 
do 
  FILENAME=${i#FILE_} 
  FILENAME=${FILENAME//_/\/} 
  echo -e $(printenv "$i") > "${FILENAME}" 
done
