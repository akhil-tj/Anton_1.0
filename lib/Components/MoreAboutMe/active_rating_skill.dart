import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';

class ActiveRatingSkill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 2,
      ),
      child: Icon(
        Icons.circle,
        color: orangeColor,
      ),
    );
  }
}
