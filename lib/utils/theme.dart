import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
      textTheme: TextTheme(
        displayLarge: GoogleFonts.roboto(
            textStyle: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        )),
        displayMedium: GoogleFonts.roboto(
            textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        )),
        displaySmall: GoogleFonts.roboto(
            textStyle: TextStyle(
          fontSize: 15,
          color: Colors.grey[600],
        )),
        titleSmall: GoogleFonts.roboto(
            textStyle: const TextStyle(
          fontSize: 18,
        )),
        labelSmall: GoogleFonts.roboto(
            textStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: const Color.fromRGBO(81, 153, 247, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        backgroundColor: const Color.fromRGBO(81, 153, 247, 1),
      ));
}
