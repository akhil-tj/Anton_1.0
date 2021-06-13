import 'package:anton_1_0/Components/AboutMe/aboutme_mobile.dart';
import 'package:anton_1_0/Components/Ending/ending_mobile.dart';
import 'package:anton_1_0/Components/Footer/footer_mobile.dart';
import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/new_more_aboutme_mobile.dart';
import 'package:anton_1_0/Components/Works/works_mobile.dart';
import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:anton_1_0/Widgets/MobileWidgets/inner_hyperlink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SelectableText(
                'I design,',
                style: landingMobileTxt1,
              ),
              SizedBox(width: 16),
              SelectableText(
                'c',
                style: landingMobileTxt1,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                child: SvgPicture.asset(
                  'images/Skull.svg',
                  height: 22,
                  width: 22,
                  //color: greenColor,
                ),
              ),
              SelectableText(
                'de',
                style: landingMobileTxt1,
              ),
            ],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(),
              ),
              // ignore: deprecated_member_use
              FlatButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                onPressed: () {
                  print('Show More Pressed');
                },
                color: navyColor,
                child: Text(
                  'Show More',
                  style: navbarTabletBtnTxt,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: greenColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
          EndingMobile(),
          FooterMobile(),
        ],
      ),
    );
  }
}
