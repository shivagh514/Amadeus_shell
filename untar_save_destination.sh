#!/bin/bash
#echo "enter the password"

#read PASS

echo "the script is running for DEV"

curr_user=$(whoami)

echo "the script is running with $curr_user"

DEST_PATH="/netfs/"
DEST_FOLDER="cms_nas_dev"
backup_file="/dev/cms_nas_dev.tar.gz"

if [ ! -f "$backup_file" ]; then
        echo "backupfile is not present"
        exit 1;
else
        echo "backup file: $backup_file"
fi

cd $DEST_PATH
echo "redirected to $PWD"

tar -xzf $backup_file $DEST_FOLDER

if [ $? -eq 0 ]; then
        echo "tar extract ran successfully"
else
        echo "tar extract unsurcessfull !!"
        exit 1;
fi
