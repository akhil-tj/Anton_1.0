import 'package:anton_1_0/Components/MoreAboutMe/active_rating_skill.dart';
import 'package:anton_1_0/Components/MoreAboutMe/inactive_rating_skill.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'C',
              style: navbarTabletDefaultTxt,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                InActiveRatingSkill(),
                InActiveRatingSkill(),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'C++',
              style: navbarTabletDefaultTxt,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                InActiveRatingSkill(),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Dart',
              style: navbarTabletDefaultTxt,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                InActiveRatingSkill(),
                InActiveRatingSkill(),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Flutter',
              style: navbarTabletDefaultTxt,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                InActiveRatingSkill(),
                InActiveRatingSkill(),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'UI/UX Designing',
              style: navbarTabletDefaultTxt,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                ActiveRatingSkill(),
                InActiveRatingSkill(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
