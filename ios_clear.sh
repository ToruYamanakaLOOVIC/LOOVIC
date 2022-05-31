#!/bin/sh

#pod削除
rm -rf ios/Pods
#キャッシュ削除
rm -rf ~/Library/Developer/Xcode/DerivedData/
#フラッターキャッシュ削除
flutter clean
#dart pakcage再構築
flutter pub cache repair

#podfile削除
#rm ios/Podfile
rm ios/Podfile.lock

flutter pub get