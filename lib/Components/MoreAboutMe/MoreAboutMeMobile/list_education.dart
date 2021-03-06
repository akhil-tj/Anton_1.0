import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/info_education.dart';
import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class ListEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoEducation(
          'Cochin University College of Engineering Kuttand',
          'Bachelor’s Degree, Information Technology',
          '2018 - Present',
          navbarTabletDefaultTxt,
          bodyMobiletxt2,
        ),
        SizedBox(height: 16),
        InfoEducation(
          'St.Antony’s Public School',
          'Higher Secondry Education, Computer Science',
          '2016 - 2018',
          navbarTabletDefaultTxt,
          bodyMobiletxt2,
        ),
        SizedBox(height: 16),
        InfoEducation(
          'Notre Dame School',
          'Primary Education, All Primary Subjects',
          '2004 - 2016',
          navbarTabletDefaultTxt,
          bodyMobiletxt2,
        ),
      ],
    );
  }
}
