import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/rating_skill.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:anton_1_0/Widgets/MobileWidgets/inner_hyperlink.dart';
import 'package:flutter/material.dart';

class NewListSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RatingSkill('C', '70%', 3, navbarTabletDefaultTxt),
        SizedBox(height: 16),
        RatingSkill('C++', '80%', 5, navbarTabletDefaultTxt),
        SizedBox(height: 16),
        RatingSkill('Dart', '50%', 1, navbarTabletDefaultTxt),
        SizedBox(height: 16),
        RatingSkill('Flutter', '50%', 1, navbarTabletDefaultTxt),
        SizedBox(height: 16),
        RatingSkill('UI/UX Designing', '80%', 5, navbarTabletDefaultTxt),
        InnerHyperlink(
            innerHyperlinkText: 'Works', innerHyperlinkPadding: 64.0),
      ],
    );
  }
}
