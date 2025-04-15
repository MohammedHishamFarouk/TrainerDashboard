import 'package:flutter/material.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    secondaryHeaderColor: Colors.cyanAccent,
    fontFamily: 'InriaSans',
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.cyanAccent,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      hoverElevation: 0,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.cyanAccent,
      shape: CircularNotchedRectangle(),
    ),
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.black,
    secondaryHeaderColor: Colors.cyanAccent,
    fontFamily: 'InriaSans',
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      surfaceTintColor: Colors.black,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.cyanAccent,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      hoverElevation: 0,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.cyanAccent,
      shape: CircularNotchedRectangle(),
    ),
  );
}
