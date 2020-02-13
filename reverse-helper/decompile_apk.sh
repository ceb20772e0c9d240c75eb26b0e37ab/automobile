#!/bin/bash

if [ "$1" != "" ]; then
  apk_name=${1}
  regex='(.+).apk'
  
  if [[ $apk_name =~ $regex ]]; then
    zip_ext='.zip'
    zip_name=${BASH_REMATCH[1]}$zip_ext
    mv $apk_name $zip_name
    unzip $zip_name -d unzipped
  else echo "could not parse file name"
  fi

   dex_files=$(ls unzipped | grep "dex")
   cd unzipped
   for d in $dex_files
   do
     ../dex-tools/dex2jar-2.0/d2j-dex2jar.sh $d
   done
   for j in $jar_files
   do
     java -jar ~/JDCommandLine/JDCommandLine.jar $jf
   done
   
else 
  echo APK location not specified
fi
