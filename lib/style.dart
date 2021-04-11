import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
   final String text;
   final Color color;
   final double fontSize;
   final FontWeight fontWeight;
   final TextOverflow overflow;

  const PrimaryText({
    this.text,
    this.color: Colors.black,
    this.fontSize: 16,
    this.fontWeight: FontWeight.w700,
    this.overflow: TextOverflow.visible,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Quicksand',
        fontWeight: fontWeight,
      ),
    );
  }
}
