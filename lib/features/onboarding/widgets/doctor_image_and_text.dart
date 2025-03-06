import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resources/assets_manager.dart';
import 'package:flutter_advance/core/resources/fonts_manager.dart';
import 'package:flutter_advance/core/resources/sizes_manager.dart';
import 'package:flutter_advance/core/resources/strings_manager.dart';
import 'package:flutter_advance/core/resources/styles_manager.dart';
import 'package:flutter_advance/core/resources/colors_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AssetsManager.docdocLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorsManager.white,
                ColorsManager.white.withValues(alpha: OpacityManager.Op_0_0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [ConstantSize.s0_14, ConstantSize.s0_4],
            ),
          ),
          child: Image.asset(AssetsManager.onBoardingDoctor),
        ),
        Positioned(
          bottom: HeightManager.h30,
          left: WidthManager.w0,
          right: WidthManager.w0,
          child: Text(
            StringsManager.BestDoctorAppointmenApp,
            textAlign: TextAlign.center,
            style: getBoldTextStyle(fontSize: FontSizeManager.s32, color: ColorsManager.primaryColor,height: 1.4)
          ),
        ),
      ],
    );
  }
}