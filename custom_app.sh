#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
		echo ">>> in custom_app $apkBaseName"
	sed -i '3a\    <Preference android:title="Rom作者" android:summary="luo2888" style="?android:preferenceInformationStyle" />'  $tempSmaliDir/res/xml/device_info_settings.xml
	sed -i 's/android:targetPackage="com.android.phone" android:action="android.intent.action.MAIN" android:targetClass="com.android.phone.Settings"/android:targetPackage="com.android.phone" android:action="android.intent.action.MAIN" android:targetClass="com.android.phone.MobileNetworkSettings"/g'  $tempSmaliDir/res/xml/settings_headers.xml
	sed -i 's/android:targetPackage="com.android.phone" android:action="android.intent.action.MAIN" android:targetClass="com.android.phone.Settings"/android:targetPackage="com.android.phone" android:action="android.intent.action.MAIN" android:targetClass="com.android.phone.MobileNetworkSettings"/g'  $tempSmaliDir/res/xml/wireless_settings.xml
	cp -f 'Settings/res/mipmap-hdpi/ic_launcher_settings.png'  $tempSmaliDir/res/mipmap-hdpi/ic_launcher_settings.png

elif [ "$apkBaseName" = "HomePro" ];then
		echo ">>> in custom_app for $apkBaseName"
	sed -i 's/className="com.baidu.camera.Camera" packageName="com.baidu.camera"/className="com.sec.android.app.camera.Camera" packageName="com.sec.android.app.camera"/g' $tempSmaliDir/res/xml-hdpi/default_workspace.xml
	sed -i 's/className="com.baidu.gallery3d.app.Gallery" packageName="com.baidu.gallery3d"/className="com.sec.android.gallery3d.app.Gallery" packageName="com.sec.android.gallery3d"/g' $tempSmaliDir/res/xml-hdpi/default_workspace.xml
#	sed -i 's/className="com.android.mms.ui.ConversationList" packageName="com.android.contacts"/className="com.android.mms.ui.ConversationList" packageName="com.android.mms"/g' $tempSmaliDir/res/xml-hdpi/default_workspace.xml
	sed -i 's/className="com.baidu.camera.Camera" packageName="com.baidu.camera"/className="com.sec.android.app.camera.Camera" packageName="com.sec.android.app.camera"/g' $tempSmaliDir/res/xml/default_workspace.xml
	sed -i 's/className="com.baidu.gallery3d.app.Gallery" packageName="com.baidu.gallery3d"/className="com.sec.android.gallery3d.app.Gallery" packageName="com.sec.android.gallery3d"/g' $tempSmaliDir/res/xml/default_workspace.xml
#	sed -i 's/className="com.android.mms.ui.ConversationList" packageName="com.android.contacts"/className="com.android.mms.ui.ConversationList" packageName="com.android.mms"/g' $tempSmaliDir/res/xml/default_workspace.xml

fi
