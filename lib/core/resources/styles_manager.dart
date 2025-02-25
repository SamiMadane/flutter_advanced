import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resources/fonts_manager.dart';


TextStyle _getTextStyle(
    double fontSize,
    FontWeight fontWeight,
    Color color,
    TextDecoration decoration,
    double height,
    ) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    decoration: decoration,
    height: height,
  );
}

// Regular TextStyle
TextStyle getRegularTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  double height = 0.0,
}) {
  return _getTextStyle(
    fontSize,
    ManagerFontWeight.regular,
    color,
    decoration,
    height,
  );
}

// Medium TextStyle
TextStyle getMediumTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  double height = 0.0,

}) {
  return _getTextStyle(
    fontSize,
    ManagerFontWeight.medium,
    color,
    decoration,
    height
  );
}

// Bold TextStyle
TextStyle getBoldTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  double height = 0.0,
}) {
  return _getTextStyle(
    fontSize,
    ManagerFontWeight.bold,
    color,
    decoration,
    height
  );
}

TextStyle getSemiBoldTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  double height = 0.0,
}) {
  return _getTextStyle(
      fontSize,
      ManagerFontWeight.semiBold,
      color,
      decoration,
      height
  );
}