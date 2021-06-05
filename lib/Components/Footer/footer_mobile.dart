import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 180),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () async {
                  const url = 'https://twitter.com/akhil__tj';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image(
                  image:
                      AssetImage('images/ant-design_twitter-circle-filled.png'),
                  height: 40,
                  width: 40,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  const url = 'https://github.com/itexpert2572000';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image(
                  image: AssetImage('images/ant-design_github-filled.png'),
                  height: 40,
                  width: 40,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  const url = 'https://www.linkedin.com/in/akhiltj/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image(
                  image: AssetImage(
                      'images/entypo-social_linkedin-with-circle.png'),
                  height: 40,
                  width: 40,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  const url = 'https://www.instagram.com/akhil__tj/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image(
                  image: AssetImage('images/ant-design_instagram-filled.png'),
                  height: 40,
                  width: 40,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  const url = 'https://www.behance.net/TJ_DesignZ';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image(
                  image:
                      AssetImage('images/ant-design_behance-circle-filled.png'),
                  height: 40,
                  width: 40,
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          SelectableText(
            'Designed & Build by Akhil T J',
            style: bodyMobiletxt2,
          ),
          SizedBox(height: 2),
          SelectableText(
            'Copyright 2021',
            style: bodyMobiletxt2,
          ),
        ],
      ),
    );
  }
}
