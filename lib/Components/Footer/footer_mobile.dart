import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                child: SvgPicture.asset(
                  'images/twitter.svg',
                  height: 40,
                  width: 40,
                ),
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
                child: SvgPicture.asset(
                  'images/github.svg',
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
                child: SvgPicture.asset(
                  'images/linkedin.svg',
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
                child: SvgPicture.asset(
                  'images/instagram.svg',
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
                child: SvgPicture.asset(
                  'images/behance.svg',
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
