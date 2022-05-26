import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  final String text;
  int fontSize;
  bool isUnderline;
  final Color color;
  TextWidget(
      {Key? key,
      required this.text,
      required this.fontSize,
      this.isUnderline = false,
      this.color = const Color(0xFF363f93)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: isUnderline ? const Color(0XFF363f93) : const Color(0xFFffffff),
        width: 1.0,
      ))),
      child: Text(text,
          style: TextStyle(
              fontSize: fontSize.toDouble(),
              fontFamily: "Avenir",
              fontWeight: FontWeight.w900,
              color: color)),
    );
  }
}
