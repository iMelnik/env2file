#!/bin/bash
# Get list of ENV variables starting with FILE_
for i in $(compgen -A variable | egrep ^FILE_); 
do 
  # Make filepath out of ENV variable name 
  FILENAME=${i#FILE_} 
  FILENAME=${FILENAME//_/\/}
  # Save contents to file
  echo -e $(printenv "$i") > "${FILENAME}" 
done
# Keep container running
pause