#/bin/bash
echo "in $0"
OUT_DIR=/home/jay/baidurom/4.1/devices/S7562C/out
FILES_DIR=/home/jay/baidurom/4.1/devices/S7562C/out/merged_target_files
PRE_UPDATE_DIR=/home/jay/baidurom/4.1/devices/S7562C/update-single-phone
UPDATE_DIR=/home/jay/baidurom/4.1/devices/S7562C/out/update-single-phone
#cd $OUT_DIR
#cp -Rf $PRE_UPDATE_DIR $OUT_DIR
#mv -f $FILES_DIR/SYSTEM/app/Contacts.apk $UPDATE_DIR/system/app
#mv -f $FILES_DIR/SYSTEM/app/ContactsProvider.apk $UPDATE_DIR/system/app
rm  -rf $FILES_DIR/SYSTEM/app/Phone.apk #$UPDATE_DIR/system/app
#rm  -rf $FILES_DIR/SYSTEM/app/TelephonyProvider.apk #$UPDATE_DIR/system/app
echo 'romjd.rom.id=6e824dfc-7f5b-4329-a897-6fe42d0c51c7' >> $FILES_DIR/SYSTEM/build.prop
echo 'romjd.rom.version=2.2.67.11' >> $FILES_DIR/SYSTEM/build.prop
echo 'romjd.rom.version.code=2' >> $FILES_DIR/SYSTEM/build.prop
echo 'romjd.cp.list=com.chaozh.iReaderFree:98127D058CBD88018F3ADA43D37C5585;com.baidu.BaiduMap:6D9AC2A282B85326BAEA648182147A54;' >> $FILES_DIR/SYSTEM/build.prop

#cd $UPDATE_DIR
#zip -r $OUT_DIR/update.zip ./*
