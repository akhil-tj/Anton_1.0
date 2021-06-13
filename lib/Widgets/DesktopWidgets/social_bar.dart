import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 182, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image(
            image: AssetImage('images/Line 1.png'),
            height: 90,
          ),
          SizedBox(
            height: 24,
          ),
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
              image: AssetImage('images/ant-design_twitter-circle-filled.png'),
              height: 40,
              width: 40,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () async {
              const url = 'https://github.com/akhil-tj';
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
          SizedBox(
            height: 16,
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
              image:
                  AssetImage('images/entypo-social_linkedin-with-circle.png'),
              height: 40,
              width: 40,
            ),
          ),
          SizedBox(
            height: 16,
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
          SizedBox(
            height: 16,
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
              image: AssetImage('images/ant-design_behance-circle-filled.png'),
              height: 40,
              width: 40,
            ),
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
    );
  }
}
