import 'package:financial_management_app/consts/app_dimens.dart';
import 'package:financial_management_app/features/presenter/styles/text_styles/button/button_text_style.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Function() onPressed;
  final String description;
  final Color descriptionColor;
  final bool descriptionBool;
  final List<Color> gradient;

  const GradientButton(
      {required this.onPressed,
      required this.description,
      required this.descriptionColor,
      required this.descriptionBool,
      required this.gradient,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradient),
          borderRadius: BorderRadius.circular(50)),
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
