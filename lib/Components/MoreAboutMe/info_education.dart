import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoEducation extends StatelessWidget {
  String institution;
  String degree;
  String year;
  InfoEducation(this.institution, this.degree, this.year);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          institution,
          style: navbarTabletDefaultTxt,
        ),
        SizedBox(height: 2),
        Text(
          degree,
          style: bodyMobiletxt2,
        ),
        SizedBox(height: 2),
        Text(
          year,
          style: bodyMobiletxt2,
        ),
      ],
    );
  }
}
