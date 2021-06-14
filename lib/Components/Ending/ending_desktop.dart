import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'akhiltj.dev@gmail.com',
);

class EndingDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 180),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            'I’m always interested',
            style: landingDesktopTxt1,
          ),
          SelectableText(
            'about cool stuff.',
            style: landingDesktopTxt1,
          ),
          SelectableText(
            'Need help?',
            style: landingDesktopTxt2,
          ),
          SelectableText(
            'Let’s talk.',
            style: landingDesktopTxt1,
          ),
          SizedBox(
            height: 64,
          ),
          GestureDetector(
            onTap: () {
              print('Pressed More About Me');
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async {
                  if (await canLaunch(_emailLaunchUri.toString())) {
                    await launch(_emailLaunchUri.toString());
                  } else {
                    throw 'Could not launch ${_emailLaunchUri.toString()}';
                  }
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Contact',
                      style: h2Desktoptxt,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
