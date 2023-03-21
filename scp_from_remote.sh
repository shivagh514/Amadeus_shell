#!/bin/bash
#echo "enter the password"

#read PASS

echo "the script is running for DEV"

curr_user=$(whoami)

echo "the script is running with $curr_user"

file_path="/dev/cms_nas_dev.tar.gz"
SERVER="obevd589"
DEST=/dev/
scp -r pshirem1@$SERVER:$file_path $DEST
#expect "Password:"
#send "$PASS\n"

if [ $? -eq 0 ]; then
        echo "scp command ran successfully"
else
        echo "ERRORS WHILE RUNNING SCP"
fi

if [ ! -f "/dev/cms_nas_dev.tar.gz" ]; then
        echo "tar file is not copied from the remote server"
        exit 1;
else
        echo "remote file is available in path : $DEST"
fi
