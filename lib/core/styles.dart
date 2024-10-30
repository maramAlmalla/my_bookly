import 'package:flutter/material.dart';
import 'package:my_bookly/constant.dart';

abstract class Styles {
  static const titleMedium = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, fontFamily: KFontsBlack);
  static const textstyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontFamily: KFontsLight,
  );
  static const textstyle14 = TextStyle(
    fontSize: 14,
    fontFamily: KFontsRegular,
  );
  static const textstyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: KFontsBlack,
  );
}
