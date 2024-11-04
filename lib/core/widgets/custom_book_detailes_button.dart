import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';

class CustomBookDetailesButton extends StatelessWidget {
  const CustomBookDetailesButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius});
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16),
              )),
          child: Text(
            text,
            style: Styles.textstyle18.copyWith(color: textColor),
          )),
    );
  }
}
