#!/bin/bash

OS_TYPE=""
case "$(uname -s)" in
 Darwin)
OS_TYPE='MacOS'
;;
Linux)
OS_TYPE='Linux'
;;
CYGWIN*|MINGW32*|MSYS*|MINGW*)
OS_TYPE='Windows'
;;
*)
echo 'Other OS'
;;
esac

if [ "$OS_TYPE"=='Linux' ]; then
   mv $PWD/scripts $HOME/.buildConfig/configFile
elif [ "$OS_TYPE"=='Windows' ] ; then
   echo "Windows"
elif [ "$OS_TYPE"=='MacOS' ] ; then
   mv $PWD/scripts $HOME/.buildConfig/configFile
else
    echo "Not Support"
fi
echo  "MOVE_SUCCESS_FILE_GET";
