import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resources/colors_manager.dart';
import 'package:flutter_advance/core/resources/fonts_manager.dart';
import 'package:flutter_advance/core/resources/sizes_manager.dart';
import 'package:flutter_advance/core/resources/styles_manager.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        SizedBox(height: HeightManager.h2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        SizedBox(height: HeightManager.h2),
        buildValidationRow('At least 1 special character', hasSpecialCharacters),
        SizedBox(height: HeightManager.h2),
        buildValidationRow('At least 1 number', hasNumber),
        SizedBox(height: HeightManager.h2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        SizedBox(height: WidthManager.w6),
        Text(
          text,
          style: getRegularTextStyle(fontSize: FontSizeManager.s13, color: ColorsManager.darkBlue).copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        )
      ],
    );
  }
}
