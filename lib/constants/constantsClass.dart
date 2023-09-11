import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constansts {
  static const MaterialColor mainColor = Colors.purple;
  static const String headName = "Average Calculation";
  static final TextStyle headTextStyle = GoogleFonts.quicksand(
    fontSize: 24,fontWeight: FontWeight.w900,color: mainColor);
  static final TextStyle resultTextStyle = GoogleFonts.quicksand(
    fontSize: 12,fontWeight: FontWeight.w900,color: mainColor);
    static final TextStyle result2TextStyle = GoogleFonts.quicksand(
    fontSize: 60,fontWeight: FontWeight.w900,color: mainColor);
  static  BorderRadius borderRadius = BorderRadius.circular(24);
  static EdgeInsetsGeometry padding = EdgeInsets.symmetric(horizontal: 8);
}

 