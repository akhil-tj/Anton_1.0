import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Widgets/MobileWidgets/inner_hyperlink.dart';
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
          SelectableText(
            'I’m always interested about cool stuff.',
            style: landingMobileTxt1,
          ),
          SelectableText(
            'Need help?',
            style: landingMobileTxt2,
          ),
          SelectableText(
            'Let’s talk.',
            style: landingMobileTxt1,
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
      child: InnerHyperlink(
          innerHyperlinkText: 'E-mail Me', innerHyperlinkPadding: 64.0),
    );
  }
}

//new comment