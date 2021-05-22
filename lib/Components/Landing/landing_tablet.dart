import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class LandingTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 72,
        vertical: 72,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello,',
            style: landingTabletTxt1,
          ),
          Row(
            children: [
              Text(
                'I’m',
                style: landingTabletTxt1,
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                'Akhil T J',
                style: landingTabletTxt2,
              ),
            ],
          ),
          Text(
            'I design, code and',
            style: landingTabletTxt1,
          ),
          Text(
            'grow things on',
            style: landingTabletTxt1,
          ),
          Text(
            'internet.',
            style: landingTabletTxt1,
          ),
          SizedBox(
            height: 64,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: h1Tablettxt,
              ),
              SizedBox(
                width: 24,
              ),
              Icon(
                Icons.visibility_off,
                color: greenColor,
                size: 26,
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
