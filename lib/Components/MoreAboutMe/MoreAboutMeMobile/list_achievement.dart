import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/info_education.dart';
import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class ListAchievement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoEducation(
          'Make-A-Ton CUSAT',
          'Hack 4 CUSAT Category Winner',
          '2020',
          navbarTabletDefaultTxt,
          bodyMobiletxt2,
        ),
        SizedBox(height: 16),
        InfoEducation(
          'Def Hacks Global 2.0',
          'Education Track Winner',
          '2020',
          navbarTabletDefaultTxt,
          bodyMobiletxt2,
        ),
        SizedBox(height: 16),
        InfoEducation(
          'Bengaluru Moving Hackathon',
          'Top 22 Solutions',
          '2020',
          navbarTabletDefaultTxt,
          bodyMobiletxt2,
        ),
      ],
    );
  }
}
