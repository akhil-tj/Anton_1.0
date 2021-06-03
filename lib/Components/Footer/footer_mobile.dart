import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:flutter/material.dart';

class FooterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 220),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image:
                    AssetImage('images/ant-design_twitter-circle-filled.png'),
                height: 40,
                width: 40,
              ),
              Image(
                image: AssetImage('images/ant-design_github-filled.png'),
                height: 40,
                width: 40,
              ),
              Image(
                image:
                    AssetImage('images/entypo-social_linkedin-with-circle.png'),
                height: 40,
                width: 40,
              ),
              Image(
                image: AssetImage('images/ant-design_instagram-filled.png'),
                height: 40,
                width: 40,
              ),
              Image(
                image:
                    AssetImage('images/ant-design_behance-circle-filled.png'),
                height: 40,
                width: 40,
              ),
            ],
          ),
          SizedBox(height: 24),
          Text(
            'Designed & Build by Akhil T J',
            style: bodyMobiletxt2,
          ),
          SizedBox(height: 2),
          Text(
            'Copyright 2021',
            style: bodyMobiletxt2,
          ),
        ],
      ),
    );
  }
}
