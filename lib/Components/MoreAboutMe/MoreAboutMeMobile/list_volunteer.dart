import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/info_education.dart';
import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class ListVolunteer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoEducation(
          'TinkerHub CUCEK',
          'Creative Lead',
          '2019 - 2021',
          navbarTabletDefaultTxt,
          bodyMobiletxt2,
        ),
        SizedBox(height: 16),
        InfoEducation(
          'Hack Club CUCEK',
          'Co Lead',
          '2019 - 2021',
          navbarTabletDefaultTxt,
          bodyMobiletxt2,
        ),
        SizedBox(height: 16),
        InfoEducation(
          'School of Innovation India from Facebook',
          'Spark AR Facilitator',
          '2020 - Present',
          navbarTabletDefaultTxt,
          bodyMobiletxt2,
        ),
        SizedBox(height: 16),
        InfoEducation(
          'Designer Me CUCEK',
          'Community Manager',
          '2020 - Present',
          navbarTabletDefaultTxt,
          bodyMobiletxt2,
        ),
        SizedBox(height: 16),
        InfoEducation(
          'Student Developer Society',
          'Volunteer, Design Team',
          '2020 - Present',
          navbarTabletDefaultTxt,
          bodyMobiletxt2,
        ),
      ],
    );
  }
}
