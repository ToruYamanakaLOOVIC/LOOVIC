#!/bin/sh
#iOSリリースビルドスクリプト


#iosディレクトリ
cd  ./ios
#ipa作成
xcodebuild -allowProvisioningUpdates -exportArchive -archivePath $PWD/build/Runner.xcarchive -exportOptionsPlist exportOptions.plist -exportPath $PWD/build/Runner.ipa
#ディレクトリに戻る
cd ../
