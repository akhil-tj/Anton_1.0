import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeDesktop/vertical_tabbar.dart';
import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';

class MoreAboutmeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 180),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'More About Me',
            style: h1Desktoptxt,
          ),
          SizedBox(height: 40),
          VerticalTabBar(),
          GestureDetector(
            onTap: () {
              print('Pressed About Me');
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Works',
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
