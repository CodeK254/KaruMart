import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  double? letterSpacing;
  
  CustomText({super.key, required this.text, this.fontSize, this.fontWeight, this.color, this.letterSpacing});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
        letterSpacing: letterSpacing ?? 1.0,
      ),
    );
  }
}