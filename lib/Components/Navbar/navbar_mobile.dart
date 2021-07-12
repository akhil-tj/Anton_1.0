import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavbarMobile extends StatefulWidget {
  @override
  _NavbarMobileState createState() => _NavbarMobileState();
}

class _NavbarMobileState extends State<NavbarMobile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: greenColor,
              size: 32,
            ),
          ),
          Spacer(),
          // ignore: deprecated_member_use
          ResumeViewer()
        ],
      ),
    );
  }
}

class ResumeViewer extends StatefulWidget {
  @override
  _ResumeViewerState createState() => _ResumeViewerState();
}

class _ResumeViewerState extends State<ResumeViewer> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 14,
      ),
      onPressed: () async {
        const url =
            'https://drive.google.com/file/d/1fzKkvOxAaZuKA2u--RkJhls36lT311HO/view?usp=sharing';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      color: navyColor,
      child: Text(
        'Resume',
        style: navbarTabletBtnTxt,
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: greenColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
