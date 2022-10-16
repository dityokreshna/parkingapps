import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color primaryColor = Color(0xFFFFFFFF);
final Color secondaryColor = Color.fromARGB(255, 35, 83, 143);

TextTheme myTextTheme(
        {fontWeights = FontWeight.normal, colors = Colors.black}) =>
    TextTheme(
      headline1: GoogleFonts.montserrat(
          fontSize: 102,
          fontWeight: fontWeights,
          letterSpacing: -1.5,
          color: colors),
      headline2: GoogleFonts.montserrat(
          fontSize: 64,
          fontWeight: fontWeights,
          letterSpacing: -0.5,
          color: colors),
      headline3: GoogleFonts.montserrat(
          fontSize: 51, fontWeight: fontWeights, color: colors),
      headline4: GoogleFonts.montserrat(
          fontSize: 36,
          fontWeight: fontWeights,
          letterSpacing: 0.25,
          color: colors),
      headline5: GoogleFonts.montserrat(
          fontSize: 25, fontWeight: fontWeights, color: colors),
      headline6: GoogleFonts.montserrat(
          fontSize: 21,
          fontWeight: fontWeights,
          letterSpacing: 0.15,
          color: colors),
      subtitle1: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: fontWeights,
          letterSpacing: 0.15,
          color: colors),
      subtitle2: GoogleFonts.montserrat(
          fontSize: 15,
          fontWeight: fontWeights,
          letterSpacing: 0.1,
          color: colors),
      bodyText1: GoogleFonts.montserrat(
          fontSize: 17,
          fontWeight: fontWeights,
          letterSpacing: 0.5,
          color: colors),
      bodyText2: GoogleFonts.montserrat(
          fontSize: 15,
          fontWeight: fontWeights,
          letterSpacing: 0.25,
          color: colors),
      button: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: fontWeights,
          letterSpacing: 1.25,
          color: colors),
      caption: GoogleFonts.montserrat(
          fontSize: 13,
          fontWeight: fontWeights,
          letterSpacing: 0.4,
          color: colors),
      overline: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: fontWeights,
          letterSpacing: 0.4,
          color: colors),
    );
