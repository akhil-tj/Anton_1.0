import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RatingSkill extends StatelessWidget {
  String skill;
  String percentage;
  int fluxValue;
  TextStyle txtStyle;
  RatingSkill(this.skill, this.percentage, this.fluxValue, this.txtStyle);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          skill,
          style: txtStyle,
        ),
        SizedBox(height: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: fluxValue,
              child: Container(
                height: 17,
                color: orangeColor,
              ),
            ),
            Expanded(
              child: Container(
                height: 17,
                color: Colors.blueGrey,
                child: SelectableText(
                  percentage,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'FiraCode',
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
        //SizedBox(height: 16),
      ],
    );
  }
}
