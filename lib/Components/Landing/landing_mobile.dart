import 'package:anton_1_0/Components/AboutMe/aboutme_mobile.dart';
import 'package:anton_1_0/Components/Ending/ending_mobile.dart';
import 'package:anton_1_0/Components/Footer/footer_mobile.dart';
import 'package:anton_1_0/Components/MoreAboutMe/new_more_aboutme_mobile.dart';
import 'package:anton_1_0/Components/Works/works_mobile.dart';
import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Widgets/MobileWidgets/inner_hyperlink.dart';
import 'package:flutter/material.dart';

class LandingMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24, 80, 24, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            'Hello,',
            style: landingMobileTxt1,
          ),
          SelectableText.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'I’m',
                  style: landingMobileTxt1,
                ),
                TextSpan(
                  text: ' Akhil T J',
                  style: landingMobileTxt2,
                ),
              ],
            ),
          ),
          SelectableText(
            'I design, code',
            style: landingMobileTxt1,
          ),
          SelectableText(
            'and grow',
            style: landingMobileTxt1,
          ),
          SelectableText(
            'things on',
            style: landingMobileTxt1,
          ),
          SelectableText(
            'internet.',
            style: landingMobileTxt1,
          ),
          InnerHyperlink(
              innerHyperlinkText: 'About Me', innerHyperlinkPadding: 64.0),
          AboutmeMobile(),
          NewMoreAboutMeMobile(),
          WorksMobile(),
          EndingMobile(),
          FooterMobile(),
        ],
      ),
    );
  }
}
