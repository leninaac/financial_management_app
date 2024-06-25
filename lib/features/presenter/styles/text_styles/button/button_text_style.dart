import 'package:financial_management_app/consts/app_fonts.dart';
import 'package:flutter/material.dart';

class ButtonTextStyle {

  static TextStyle buttonTextStyle({
    required Color color,
    required bool bold,
    double? fontSize,
}) {
    return TextStyle(
      fontFamily: AppFonts.sfProDisplayFont,
      color: color,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      fontSize: fontSize
    );
  }
}