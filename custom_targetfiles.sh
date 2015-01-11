#/bin/bash
echo "in $0"
OUT_DIR=/home/jay/baidurom/4.1/devices/S7562C/out
FILES_DIR=/home/jay/baidurom/4.1/devices/S7562C/out/merged_target_files
PRE_UPDATE_DIR=/home/jay/baidurom/4.1/devices/S7562C/update-single-phone
UPDATE_DIR=/home/jay/baidurom/4.1/devices/S7562C/out/update-single-phone
cd $OUT_DIR
cp -Rf $PRE_UPDATE_DIR $OUT_DIR
mv -f $FILES_DIR/SYSTEM/app/Contacts.apk $UPDATE_DIR/system/app
mv -f $FILES_DIR/SYSTEM/app/ContactsProvider.apk $UPDATE_DIR/system/app
mv -f $FILES_DIR/SYSTEM/app/Phone.apk $UPDATE_DIR/system/app
mv -f $FILES_DIR/SYSTEM/app/TelephonyProvider.apk $UPDATE_DIR/system/app

cd $UPDATE_DIR
zip -r $OUT_DIR/update.zip ./*
