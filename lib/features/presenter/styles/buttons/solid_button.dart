import 'package:flutter/material.dart';
import '../../../../consts/app_dimens.dart';
import '../text_styles/button/button_text_style.dart';

class SolidButton extends StatelessWidget {
  final Function() onPressed;
  final String description;
  final Color descriptionColor;
  final bool descriptionBool;
  final Color color;

  const SolidButton(
      {super.key,
      required this.description,
      required this.descriptionBool,
      required this.descriptionColor,
      required this.onPressed,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          description,
          style: ButtonTextStyle.buttonTextStyle(
              color: descriptionColor,
              bold: descriptionBool,
              fontSize: AppDimens.bodyH3),
        ),
      ),
    );
  }
}
