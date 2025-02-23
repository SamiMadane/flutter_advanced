import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resources/fonts_manager.dart';
import 'package:flutter_advance/core/resources/sizes_manager.dart';
import 'package:flutter_advance/core/resources/strings_manager.dart';
import 'package:flutter_advance/core/resources/styles_manager.dart';
import 'package:flutter_advance/core/resources/colors_manager.dart';
import 'package:flutter_advance/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter_advance/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:flutter_advance/features/onboarding/widgets/get_started_button.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: HeightManager.h60, bottom: HeightManager.h30),
              child: Column(
                children: [
                  const DocLogoAndName(),
                  SizedBox(height: HeightManager.h30),
                  const DoctorImageAndText(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: WidthManager.w30),
                    child: Column(
                      children: [
                        Text(
                          StringsManager.onBoarding_ManageAndSchedule,
                          style: getRegularTextStyle(fontSize: FontSizeManager.s12, color: ColorsManager.grey),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: HeightManager.h30),
                        const GetStartedButton(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}