import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class LandingDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        72,
        40,
        0,
        0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Image(
                image: AssetImage('images/Line 1.png'),
                height: 90,
              ),
              SizedBox(
                height: 24,
              ),
              Image(
                image:
                    AssetImage('images/ant-design_twitter-circle-filled.png'),
                height: 40,
                width: 40,
              ),
              SizedBox(
                height: 16,
              ),
              Image(
                image: AssetImage('images/ant-design_github-filled.png'),
                height: 40,
                width: 40,
              ),
              SizedBox(
                height: 16,
              ),
              Image(
                image:
                    AssetImage('images/entypo-social_linkedin-with-circle.png'),
                height: 40,
                width: 40,
              ),
              SizedBox(
                height: 16,
              ),
              Image(
                image: AssetImage('images/ant-design_instagram-filled.png'),
                height: 40,
                width: 40,
              ),
              SizedBox(
                height: 16,
              ),
              Image(
                image:
                    AssetImage('images/ant-design_behance-circle-filled.png'),
                height: 40,
                width: 40,
              ),
              SizedBox(
                height: 16,
              ),
              Image(
                image: AssetImage('images/Line 1.png'),
                height: 90,
              ),
            ],
          ),
          SizedBox(
            width: 80,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: landingDesktopTxt1,
              ),
              Row(
                children: [
                  Text(
                    'I’m',
                    style: landingDesktopTxt1,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Akhil T J',
                    style: landingDesktopTxt2,
                  ),
                ],
              ),
              Text(
                'I design, code and',
                style: landingDesktopTxt1,
              ),
              Text(
                'grow things on',
                style: landingDesktopTxt1,
              ),
              Text(
                'internet.',
                style: landingDesktopTxt1,
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: h1Desktoptxt,
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Icon(
                    Icons.visibility_off,
                    color: greenColor,
                    size: 28,
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
