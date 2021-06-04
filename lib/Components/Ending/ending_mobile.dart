import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'akhiltj.dev@gmail.com',
);

class EndingMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 180),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'I’m always interested about cool stuff.',
            style: landingMobileTxt1,
          ),
          Text(
            'Need help?',
            style: landingMobileTxt2,
          ),
          Text(
            'Let’s talk.',
            style: landingMobileTxt1,
          ),
          SizedBox(
            height: 64,
          ),
          ContactViaMail(),
        ],
      ),
    );
  }
}

class ContactViaMail extends StatefulWidget {
  @override
  _ContactViaMailState createState() => _ContactViaMailState();
}

class _ContactViaMailState extends State<ContactViaMail> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunch(_emailLaunchUri.toString())) {
          await launch(_emailLaunchUri.toString());
        } else {
          throw 'Could not launch ${_emailLaunchUri.toString()}';
        }
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'E-mail Me',
            style: navbarTabletBtnTxt,
          ),
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.east,
            color: greenColor,
            size: 22,
          ),
        ],
      ),
    );
  }
}
