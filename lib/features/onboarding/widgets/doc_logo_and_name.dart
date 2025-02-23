import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resources/assets_manager.dart';
import 'package:flutter_advance/core/resources/fonts_manager.dart';
import 'package:flutter_advance/core/resources/sizes_manager.dart';
import 'package:flutter_advance/core/resources/strings_manager.dart';
import 'package:flutter_advance/core/resources/styles_manager.dart';
import 'package:flutter_advance/core/resources/colors_manager.dart';
import 'package:flutter_svg/svg.dart';


class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetsManager.docdocLogo),
        SizedBox(width: WidthManager.w10),
        Text(
          StringsManager.DocDoc,
          style: getBoldTextStyle(fontSize: FontSizeManager.s24, color: ColorsManager.black)
        ),
      ],
    );
  }
}