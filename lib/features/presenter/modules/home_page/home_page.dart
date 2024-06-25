import 'package:financial_management_app/consts/app_colors.dart';
import 'package:financial_management_app/consts/app_drawables.dart';
import 'package:financial_management_app/consts/app_routes.dart';
import 'package:financial_management_app/features/presenter/styles/background_widget.dart';
import 'package:financial_management_app/features/presenter/styles/buttons/solid_button.dart';
import 'package:financial_management_app/features/presenter/styles/text_styles/logo/logo_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../styles/buttons/gradient_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routePath = AppRoutes.homePage;

  static void navigate() => Modular.to.navigate(routePath);

  static void push() => Modular.to.pushNamed(routePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.graybase1,
      appBar: AppBar(
        backgroundColor: AppColors.graybase1,
      ),
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppDrawables.appLogo,
                    width: 24,
                    height: 24,
                    color: AppColors.accentWhite,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Financial',
                    style: LogoTextStyle.yellowLogoTextStyle(
                        color: AppColors.accentYellow, bold: true),
                  ),
                  Text(
                    'Management',
                    style: LogoTextStyle.yellowLogoTextStyle(
                        color: AppColors.accentWhite, bold: false),
                  ),
                ],
              ),
              const SizedBox(height: 84),
              GradientButton(
                onPressed: () {},
                description: 'Log in',
                gradient: AppColors.gradientYellow,
                descriptionColor: AppColors.accentBlack,
                descriptionBool: false,
              ),
              const SizedBox(height: 16),
              SolidButton(
                onPressed: () {},
                description: 'Sign in',
                descriptionBool: false,
                descriptionColor: AppColors.accentWhite,
                color: AppColors.graybase4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
