import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';

class MoreAboutmeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 220),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'More About Me',
            style: navbarDesktopSelectedTxt,
          ),
          SizedBox(
            height: 28,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: greenColor,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  onPressed: () {
                    print('Selected Skills');
                  },
                  child: Text(
                    'Skills',
                    style: tabMobiletxt,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  onPressed: () {
                    print('Selected Experience');
                  },
                  child: Text(
                    'Experience',
                    style: tabMobiletxt,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  onPressed: () {
                    print('Selected Achievment');
                  },
                  child: Text(
                    'Achievment',
                    style: tabMobiletxt,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  onPressed: () {
                    print('Selected Education');
                  },
                  child: Text(
                    'Education',
                    style: tabMobiletxt,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  onPressed: () {
                    print('Selected Volunteer');
                  },
                  child: Text(
                    'Volunteer',
                    style: tabMobiletxt,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
