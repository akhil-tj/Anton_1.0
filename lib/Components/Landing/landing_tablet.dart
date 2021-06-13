import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:anton_1_0/Components/AboutMe/aboutme_mobile.dart';
import 'package:anton_1_0/Components/Ending/ending_mobile.dart';
import 'package:anton_1_0/Components/Footer/footer_mobile.dart';
import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/new_more_aboutme_mobile.dart';
import 'package:anton_1_0/Components/Works/works_mobile.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:anton_1_0/Widgets/MobileWidgets/inner_hyperlink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(72, 72, 72, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                'Hello',
                textStyle: landingTabletTxt1,
                speed: const Duration(milliseconds: 360),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'I’m',
                style: landingTabletTxt1,
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                'Akhil T J',
                style: landingTabletTxt2,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'I design, c',
                style: landingTabletTxt1,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 2, 0),
                child: SvgPicture.asset(
                  'images/Skull.svg',
                  height: 26,
                  width: 26,
                  //color: greenColor,
                ),
              ),
              Text(
                'de and',
                style: landingTabletTxt1,
              ),
            ],
          ),
          Text(
            'grow things on',
            style: landingTabletTxt1,
          ),
          Text(
            'internet.',
            style: landingTabletTxt1,
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
                  horizontal: 28,
                  vertical: 24,
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
