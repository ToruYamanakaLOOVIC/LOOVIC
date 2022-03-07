import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ThemeData THEME_APP = ThemeData(
  primaryColor: Colors.white,
  backgroundColor: Colors.white,
  canvasColor: Colors.white,
  //Appバーのテーマ
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  //タブバー
  tabBarTheme: const TabBarTheme(
    labelColor: Colors.white,
    unselectedLabelColor: Colors.grey,
  ),
  //ボタンのテーマ
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    hoverColor: Colors.yellow,
    highlightColor: Colors.green,
    focusColor: Colors.blueGrey,
  ),
  //テキストボタン
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.blue,
      backgroundColor: Colors.transparent,
    ),
  ),
  //
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.blueGrey,
      textStyle: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  //フローティングボタン
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.red,
  ),
  //ボトムナビゲーションバー
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.black,
  ),
  //カード
  cardColor: Colors.white,

  //
  //スナックバーのテーマ
  // snackBarTheme: const SnackBarThemeData(
  // backgroundColor: THEME_COLOR_GREEN,
  //   actionTextColor: Colors.white,
  // ),
//  indicatorColor: THEME_COLOR_SMART_LURE_BLUE,
  //
  //テキストテーマ
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Colors.black,
      fontSize: 96,
      fontWeight: FontWeight.bold,
      fontFamily: 'NotoSansCJK-Black',
    ),
    headline2: TextStyle(
      color: Colors.black,
      fontSize: 60,
      fontFamily: 'NotoSansCJK-Black',
    ),
    headline3: TextStyle(
      color: Colors.black,
      fontSize: 48,
      fontFamily: 'NotoSansCJK-Black',
    ),
    headline4: TextStyle(
      color: Colors.black,
      fontSize: 34,
      fontFamily: 'NotoSansCJK-Black',
    ),
    headline5: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontFamily: 'NotoSansCJK-Black',
    ),
    headline6: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontFamily: 'NotoSansCJK-Black',
    ),
    subtitle1: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontFamily: 'NotoSansCJK-Black',
    ),
    subtitle2: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontFamily: 'NotoSansCJK-Black',
    ),
    bodyText1: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontFamily: 'NotoSansCJK-Black',
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontFamily: 'NotoSansCJK-Black',
    ),
    button: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontFamily: 'NotoSansCJK-Black',
    ),
    caption: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontFamily: 'NotoSansCJK-Black',
    ),
    overline: TextStyle(
      color: Colors.black,
      fontSize: 10,
      fontFamily: 'NotoSansCJK-Black',
    ),
  ),

  //アイコンテーマ
  iconTheme: const IconThemeData(color: Colors.black),
  hintColor: Colors.white70,

  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Colors.white,
    focusColor: Colors.white,
    hoverColor: Colors.white,
    labelStyle: TextStyle(color: Colors.grey),
    hintStyle: TextStyle(color: Colors.grey),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.blueGrey),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.blueGrey),
    ),
    iconColor: Colors.blueGrey,
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
  ),
//  dialogBackgroundColor: THEME_COLOR_DARK_BLUE,
  dialogTheme: const DialogTheme(
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 16),
    contentTextStyle: TextStyle(color: Colors.black, fontSize: 16),
  ),

  listTileTheme: const ListTileThemeData(),
);
