import 'package:anton_1_0/Components/AboutMe/aboutme_mobile.dart';
import 'package:anton_1_0/Components/MoreAboutMe/more_about_me_mobile.dart';
import 'package:anton_1_0/Components/MoreAboutMe/new_more_aboutme_mobile.dart';
import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class LandingMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello,',
            style: landingMobileTxt1,
          ),
          Row(
            children: [
              Text(
                'I’m',
                style: landingMobileTxt1,
              ),
              // SizedBox(
              //   width: 26,
              // ),
              Text(
                ' Akhil T J',
                style: landingMobileTxt2,
              ),
            ],
          ),
          Text(
            'I design, code',
            style: landingMobileTxt1,
          ),
          Text(
            'and grow',
            style: landingMobileTxt1,
          ),
          Text(
            'things on',
            style: landingMobileTxt1,
          ),
          Text(
            'internet.',
            style: landingMobileTxt1,
          ),
          SizedBox(
            height: 64,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: navbarTabletBtnTxt,
              ),
              SizedBox(
                width: 16,
              ),
              Icon(
                Icons.east,
                color: greenColor,
                size: 22,
              ),
            ],
          ),
          AboutmeMobile(),
          NewMoreAboutMeMobile(),
        ],
      ),
    );
  }
}
