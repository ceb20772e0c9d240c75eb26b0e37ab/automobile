#!/bin/bash

if [ "$1" != "" ]; then
    declare zip_file_location = "${1}.zip"
    unzip $zip_file_location -d unzipped
    mkdir dex-tools
    curl "https://api.github.com/repos/pxb1988/dex2jar/releases/latest" \
      | grep "dex-tools-*.*.zip" \
      | cut -d : -f 2,3 \
      | tr -d \" \
      | wget -qi - -O dex-tools/dex-tools.zip
    unzip dex-tools/dex-tools.zip -d dex-tools
    rm dex-tools/dex-tools.zip
    chmod -R +x dex-tools

    # classes.dex in unzipped folder
    dex_files = ($(ls unzipped -t -U | grep "dex"))
    jar_files = ()
    for f in $dex_files
      do
        $jar_files += ($(dex-tools/d2j-dex2jar $f))
      done 
    
    # https://github.com/betterphp/JDCommandLine.git
    for jf in $jar_files
      do
        java -jar JDCommandLine.jar $jf "${jf}_sources"
      done

      # decompile your class files (e.g. with JD-GUI or DJ Decompilero)
else 
  echo APK location not specified
fi
