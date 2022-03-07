#!/bin/sh
#iOSリリースビルドスクリプト

#pod削除
rm -rf ios/Pods
#キャッシュ削除
rm -rf ~/Library/Developer/Xcode/DerivedData/
#フラッターキャッシュ削除
flutter clean
#dart pakcage再構築
flutter pub cache repair

#リリースビルド
flutter build ios --release
#iosディレクトリ
cd  ./ios
#署名実行
xcodebuild -workspace Runner.xcworkspace -scheme Runner -sdk iphoneos -configuration Release archive -archivePath $PWD/build/Runner.xcarchive
#ipa作成
xcodebuild -allowProvisioningUpdates -exportArchive -archivePath $PWD/build/Runner.xcarchive -exportOptionsPlist exportOptions.plist -exportPath $PWD/build/Runner.ipa
#ディレクトリに戻る
cd ../

#ビルドバイナリをFinderで開く
open ios/build/Runner.ipa

#ipaインストール
flutter install
