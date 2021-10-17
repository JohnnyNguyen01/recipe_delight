import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = FlexColorScheme.light(
  scheme: FlexScheme.bigStone,
  fontFamily: GoogleFonts.poppins().fontFamily,
).toTheme.copyWith(
      textTheme: textTheme,
      backgroundColor: const Color(0xFFf4f7fb),
    );

final darkTheme = FlexColorScheme.dark(
  scheme: FlexScheme.bigStone,
  fontFamily: GoogleFonts.poppins().fontFamily,
).toTheme.copyWith(
      textTheme: textTheme,
    );

final textTheme = GoogleFonts.poppinsTextTheme().copyWith(
  headline1: const TextStyle(fontWeight: FontWeight.w600),
  headline2: const TextStyle(fontWeight: FontWeight.w600),
  headline3: const TextStyle(fontWeight: FontWeight.w600),
  headline4: const TextStyle(fontWeight: FontWeight.w600),
  headline5: const TextStyle(fontWeight: FontWeight.w600),
  headline6: const TextStyle(fontWeight: FontWeight.w600),
);

extension ColorSchemeExtension on ColorScheme {
  Color get secondaryAccent => const Color(0xFFfff4ed);
}
