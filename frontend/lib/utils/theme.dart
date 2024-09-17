import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    hintColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black54),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
        .copyWith(background: Colors.white),
    // Customize other properties as needed
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    hintColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
        .copyWith(background: Colors.black),
    // Customize other properties as needed
  );
}
