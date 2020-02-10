import 'package:flutter/material.dart';
import 'package:movie_today/src/utils/constants.dart';

class ThemeText {
  static const TextStyle body = TextStyle(
      fontFamily: Constants.fontName,
      color: Colors.black,
      fontSize: 40,
      height: 0.5,
      fontWeight: FontWeight.w600
  );
  static const TextStyle bottomBar = TextStyle(
      fontFamily: Constants.fontName,
      fontSize: 11.0,
      color: Colors.deepOrange,
      fontWeight: FontWeight.w400
  );

  static const TextStyle bottomBardeselected = TextStyle(
      fontFamily: Constants.fontName,
      fontSize: 11.0,
      color: Colors.blueGrey,
      fontWeight: FontWeight.w400
  );


 
}

