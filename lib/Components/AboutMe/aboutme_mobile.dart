import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Widgets/MobileWidgets/inner_hyperlink.dart';
import 'package:flutter/material.dart';

class AboutmeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 220),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            'About Me',
            style: navbarDesktopSelectedTxt,
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'images/profile pic mobile.jpg',
                ),
              ),
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SelectableText(
            'I\'m an aspiring engineering student specialized in Information Technology Engineering. Fell in love with technology during the early days of childhood. I have a passion for designing, which keeps me motivated in this competitive world.',
            style: bodyMobiletxt1,
          ),
          SizedBox(
            height: 14,
          ),
          SelectableText(
            'I\'m a team player who likes to socialise & engage in community activities.',
            style: bodyMobiletxt1,
          ),
          InnerHyperlink(
              innerHyperlinkText: 'More About Me', innerHyperlinkPadding: 64.0),
        ],
      ),
    );
  }
}
