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


class Avatar extends StatelessWidget {
  final String avatarUrl;
  final double width;
  final double height;

  const Avatar({
    @required this.avatarUrl,
    this.width: 60,
    this.height: 60,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50),
          image:
              DecorationImage(image: AssetImage(avatarUrl), fit: BoxFit.cover)),
    );
  }
}
