import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';

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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'E-mail Me',
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
        ],
      ),
    );
  }
}
