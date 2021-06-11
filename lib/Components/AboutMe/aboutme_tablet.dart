import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class AboutMeTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 180),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            'About Me',
            style: navbarDesktopSelectedTxt,
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'images/Rectangle 6_page-0001.jpg',
                ),
              ),
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SelectableText(
            'I\'m an aspirant engineering student specialized in Information Technology Engineering. Fell in love with technology during the early days of childhood. I have a passion for designing, which keeps me motivated in this competitive world.',
            style: bodyMobiletxt1,
          ),
          SizedBox(
            height: 14,
          ),
          SelectableText(
            'I\'m a team palyer who likes to socialise & engage in community activities.',
            style: bodyMobiletxt1,
          ),
          SizedBox(
            height: 64,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'About Me',
                style: h1Tablettxt,
              ),
              SizedBox(
                width: 24,
              ),
              Icon(
                Icons.east,
                color: greenColor,
                size: 26,
              )
            ],
          ),
        ],
      ),
    );
  }
}
