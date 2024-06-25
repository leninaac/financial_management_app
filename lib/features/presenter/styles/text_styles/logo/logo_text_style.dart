import 'package:financial_management_app/consts/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../../../../consts/app_dimens.dart';

class LogoTextStyle {
  static TextStyle yellowLogoTextStyle({
    required Color color,
    required bool bold,
}) {
    return TextStyle(
      fontFamily: AppFonts.sfProDisplayFont,
      color: color,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      fontSize: AppDimens.headlineH1,
    );
  }
}