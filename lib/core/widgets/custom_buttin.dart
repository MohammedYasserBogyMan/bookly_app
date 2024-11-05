import 'package:bookl_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
    required this.borderRadius,
    required this.text,
    this.fontSize,
  });
  final Color backGroundColor;
  final Color textColor;
  final String text;
  final BorderRadius borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: Styels.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
