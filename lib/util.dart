import 'package:flutter/material.dart';

//dodavanje google fonta
//TODO: pogledaj https://pub.dev/packages/google_fonts
import 'package:google_fonts/google_fonts.dart';

//veličina u px (double), boja, debljina fonta 100-800
TextStyle textStyle(double size, Color color, FontWeight fw) {
  return GoogleFonts.montserrat(fontSize: size, color: color, fontWeight: fw);
}
