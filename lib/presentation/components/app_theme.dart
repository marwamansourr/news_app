import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData appThemeData = ThemeData(
      primaryColor: const Color.fromRGBO(52, 69, 99, 1.0),
      canvasColor: const Color(0xFF7B7878),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(

        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Color.fromRGBO(52, 69, 99, 1.0),
            fontSize: 32,
            fontWeight: FontWeight.bold),
        backgroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color.fromRGBO(52, 60, 90, 1.0),)

      ),
  );

}
