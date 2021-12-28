import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: primary,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    textTheme: lightTextTheme,
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // scaffoldBackgroundColor: Colors.black,
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: primary,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    textTheme: darkTextTheme,
  );

  static const TextTheme lightTextTheme = TextTheme(
    headline3: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
  );

  static const TextTheme darkTextTheme = TextTheme(
    headline3: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  );
}
