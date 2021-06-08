import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/info_education.dart';
import 'package:flutter/material.dart';

class ListExperence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        InfoEducation(
          'Freelance Designer',
          'UI/UX Designing',
          '2020 - Present',
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
