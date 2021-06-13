import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 182, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SvgPicture.asset(
            'images/Line 1.svg',
            height: 90,
          ),
          SizedBox(
            height: 24,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
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
          ),
          SizedBox(
            height: 16,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
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
          ),
          SizedBox(
            height: 16,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
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
          ),
          SizedBox(
            height: 16,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
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
          ),
          SizedBox(
            height: 16,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
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
          ),
          SizedBox(
            height: 16,
          ),
          SvgPicture.asset(
            'images/Line 2.svg',
            height: 90,
          ),
        ],
      ),
    );
  }
}
