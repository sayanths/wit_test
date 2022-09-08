import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wit_test/core/colors.dart';

gFont(
    {Color color = white,
    double size = 16,
    FontWeight fontWeight = FontWeight.normal,
    double letterSspacing = 0}) {
  return GoogleFonts.poppins(
    color: color,
    fontSize: size,
    fontWeight: fontWeight,
  );
}
