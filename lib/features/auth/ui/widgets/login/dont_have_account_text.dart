import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/extensions.dart';
import 'package:flutter_advance/core/resources/colors_manager.dart';
import 'package:flutter_advance/core/resources/fonts_manager.dart';
import 'package:flutter_advance/core/resources/styles_manager.dart';
import 'package:flutter_advance/core/routing/routes.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: getRegularTextStyle(fontSize: FontSizeManager.s13, color: ColorsManager.darkBlue),
          ),
          TextSpan(
            text: ' Sign Up',
            style: getSemiBoldTextStyle(fontSize: FontSizeManager.s13, color: ColorsManager.primaryColor),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
