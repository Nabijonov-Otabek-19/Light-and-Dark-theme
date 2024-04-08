import 'package:flutter/material.dart';

import 'my_colors.dart';

class MyThemes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: MyColors.primary,
    cardColor: MyColors.lightPurple,
    canvasColor: MyColors.orange,
    scaffoldBackgroundColor: MyColors.background,
    textTheme: const TextTheme(),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: MyColors.black),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(color: MyColors.black, fontSize: 20),
      color: MyColors.transparent,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: MyColors.primary,
    scaffoldBackgroundColor: MyColors.black,
    cardColor: MyColors.purple,
    canvasColor: MyColors.lightOrange,
    textTheme: const TextTheme(),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: MyColors.white),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(color: MyColors.white, fontSize: 20),
      color: MyColors.transparent,
    ),
  );
}
