import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoEducation extends StatelessWidget {
  String institution;
  String degree;
  String year;
  TextStyle txtStyle;
  TextStyle subtxtStyle;

  InfoEducation(this.institution, this.degree, this.year, this.txtStyle,
      this.subtxtStyle);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          institution,
          style: txtStyle,
        ),
        SizedBox(height: 2),
        SelectableText(
          degree,
          style: subtxtStyle,
        ),
        SizedBox(height: 2),
        SelectableText(
          year,
          style: subtxtStyle,
        ),
      ],
    );
  }
}
