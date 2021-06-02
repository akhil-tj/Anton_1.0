import 'package:flutter/material.dart';

class InActiveRatingSkill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 2,
      ),
      child: Icon(
        Icons.circle,
        color: Colors.grey,
      ),
    );
  }
}
