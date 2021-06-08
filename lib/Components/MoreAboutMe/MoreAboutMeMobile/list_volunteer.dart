import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/info_education.dart';
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
        ),
        SizedBox(height: 16),
        InfoEducation(
          'Hack Club CUCEK',
          'Co Lead',
          '2019 - 2021',
        ),
        SizedBox(height: 16),
        InfoEducation(
          'School of Innovation India from Facebook',
          'Spark AR Facilitator',
          '2020 - Present',
        ),
        SizedBox(height: 16),
        InfoEducation(
          'Designer Me CUCEK',
          'Community Manger',
          '2020 - Present',
        ),
        SizedBox(height: 16),
        InfoEducation(
          'Student Developer Society',
          'Volunteer, Design Team',
          '2020 - Present',
        ),
      ],
    );
  }
}
