import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/extensions.dart';
import 'package:flutter_advance/core/resources/fonts_manager.dart';
import 'package:flutter_advance/core/resources/sizes_manager.dart';
import 'package:flutter_advance/core/resources/strings_manager.dart';
import 'package:flutter_advance/core/resources/styles_manager.dart';
import 'package:flutter_advance/core/resources/colors_manager.dart';


import '../../../core/routing/routes.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
           Size(double.infinity, HeightManager.h52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusManager.r16),
          ),
        ),
      ),
      child: Text(
        StringsManager.GetStarted,
        style: getMediumTextStyle(fontSize: FontSizeManager.s16, color: ColorsManager.white),
      ),
    );
  }
}