import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: greenColor,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 24,
              ),
              child: Text(
                'Home',
                style: landingMobileTxt1,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 24,
              ),
              child: Text(
                'Skills',
                style: landingMobileTxt1,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 24,
              ),
              child: Text(
                'Works',
                style: landingMobileTxt1,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 24,
              ),
              child: Text(
                'Contact',
                style: landingMobileTxt1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
