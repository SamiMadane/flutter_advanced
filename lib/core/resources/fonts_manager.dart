import 'package:flutter/material.dart';
import 'package:flutter_advance/core/util/size_util.dart';

class ManagerFontWeight {
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight bold = FontWeight.w700;
}

class FontSizeManager {
  static double s12 = SizeUtil.setFontSize(12.0);
  static double s16 = SizeUtil.setFontSize(16.0);
  static double s24 = SizeUtil.setFontSize(24.0);
  static double s32 = SizeUtil.setFontSize(32.0);
}
