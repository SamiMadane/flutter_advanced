import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resources/colors_manager.dart';
import 'package:flutter_advance/core/resources/fonts_manager.dart';
import 'package:flutter_advance/core/resources/styles_manager.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: getRegularTextStyle(fontSize: FontSizeManager.s13, color: ColorsManager.darkBlue),
          ),
          TextSpan(
            text: ' Sign Up',
            style: getSemiBoldTextStyle(fontSize: FontSizeManager.s13, color: ColorsManager.primaryColor),
          ),
        ],
      ),
    );
  }
}
