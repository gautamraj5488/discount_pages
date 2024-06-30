import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class SMAAppBarTheme {
  SMAAppBarTheme._();

  static final lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: const IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: GoogleFonts.urbanist(
      textStyle: const TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  ); //

  static final darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: GoogleFonts.urbanist(
      textStyle: const TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ); //
}
