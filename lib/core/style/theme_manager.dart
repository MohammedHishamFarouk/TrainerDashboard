import 'package:flutter/material.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    secondaryHeaderColor: Colors.cyanAccent,
    fontFamily: 'InriaSans',
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
  );
}
