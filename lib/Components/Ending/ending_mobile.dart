import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class EndingMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 180),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'I’m always interested about cool stuff.',
            style: landingMobileTxt1,
          ),
          Text(
            'Need help?',
            style: landingMobileTxt2,
          ),
          Text(
            'Let’s talk.',
            style: landingMobileTxt1,
          ),
          SizedBox(
            height: 64,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact',
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
        ],
      ),
    );
  }
}
