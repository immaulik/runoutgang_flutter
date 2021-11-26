// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      accentColor: Colors.amber,
      brightness: Brightness.light,
      buttonTheme: ButtonThemeData(),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: ThemeData.light().textTheme.copyWith(
            // ignore: deprecated_member_use
            subtitle1: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 20)),
      ));
}
