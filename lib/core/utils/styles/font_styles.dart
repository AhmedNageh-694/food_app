import 'package:flutter/material.dart';
import 'package:foodapp/core/utils/styles/fonts/font_colors.dart';

abstract class FontStyles {
  static final titlestyle =
      TextStyle(fontSize: 30, color: FontColors.primaryColor);
  static final smallstyle = TextStyle(
    color: FontColors.primaryColor,
    fontSize: 15,
  );
  static const subtitle = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 0,
  );
  static const subtitle2 = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  static const blod = TextStyle(
    color: Colors.black,
    fontSize: 25,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  static const data = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );
}
