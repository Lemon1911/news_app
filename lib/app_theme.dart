import 'package:flutter/material.dart';

class AppTheme {
  static Color primaryColor = const Color(0xff39A552);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      toolbarHeight: 80,
      color: primaryColor,
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
    ),
  );
}
