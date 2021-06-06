import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';

class NavbarDesktop extends StatefulWidget {
  @override
  _NavbarDesktopState createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 72,
        vertical: 32,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Home',
            style: navbarDesktopSelectedTxt,
          ),
          SizedBox(
            width: 64,
          ),
          TextButton(
            onPressed: () {
              print('Skills pressed');
            },
            child: Text(
              'Skill',
              style: navbarDesktopDefaultTxt,
            ),
          ),
          SizedBox(
            width: 64,
          ),
          TextButton(
            onPressed: () {
              print('Work pressed');
            },
            child: Text(
              'Work',
              style: navbarDesktopDefaultTxt,
            ),
          ),
          SizedBox(
            width: 64,
          ),
          TextButton(
            onPressed: () {
              print('Contact pressed');
            },
            child: Text(
              'Contact',
              style: navbarDesktopDefaultTxt,
            ),
          ),
          SizedBox(
            width: 64,
          ),
          // ignore: deprecated_member_use
          FlatButton(
            padding: EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 24,
            ),
            onPressed: () {
              print('Resume Pressed');
            },
            color: navyColor,
            child: Text(
              'Resume',
              style: navbarDesktopBtnTxt,
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: greenColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          )
        ],
      ),
    );
  }
}
