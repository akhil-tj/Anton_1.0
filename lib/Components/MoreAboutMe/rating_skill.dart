import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RatingSkill extends StatelessWidget {
  String skill;
  String percentage;
  int fluxValue;
  RatingSkill(this.skill, this.percentage, this.fluxValue);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill,
          style: navbarTabletDefaultTxt,
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
                child: Text(
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
