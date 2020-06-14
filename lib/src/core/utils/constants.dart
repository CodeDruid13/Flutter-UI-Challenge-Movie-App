import 'package:flutter/material.dart';
 

class Constants {
  static String appName = "Movie";
  static String font = "Valera";

  //Colors for theme
//  Color(0xfffcfcff);
  static Color lightPrimary = Color(0xfffcfcff); 
  static Color darkPrimary = Color.fromRGBO(16, 18, 23, 1);
  static Color lightAccent = Colors.blue;
  static Color darkAccent = Colors.blue[800];
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Color.fromRGBO(16, 18, 23, 1); 
  static Color ratingBG = Colors.yellow[600];

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    fontFamily: font,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        title: TextStyle(
            color: darkBG,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
            fontFamily: font),
      ),
//      iconTheme: IconThemeData(
//        color: lightAccent,
//      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    fontFamily: font,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        title: TextStyle(
            color: lightBG,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
            fontFamily: font),
      ),
//      iconTheme: IconThemeData(
//        color: darkAccent,
//      ),
    ),
  );
 

 
}

 