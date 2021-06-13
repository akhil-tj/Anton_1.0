import 'package:anton_1_0/Components/AboutMe/aboutme_desktop.dart';
import 'package:anton_1_0/Components/Ending/ending_desktop.dart';
import 'package:anton_1_0/Components/Footer/footer_desktop.dart';
import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeDesktop/more_aboutme_desktop.dart';
import 'package:anton_1_0/Components/Works/WorksDesktop/works_desktop.dart';
import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';

class LandingDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(152, 40, 0, 24),
      child: Container(
        //color: Colors.green,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SocialBar(),
            SizedBox(width: 80),
            Container(
              //color: Colors.teal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    'Hello,',
                    style: landingDesktopTxt1,
                  ),
                  // SelectableText.rich(
                  //   TextSpan(
                  //     children: <TextSpan>[
                  //       TextSpan(
                  //         text: 'I’m',
                  //         style: landingDesktopTxt1,
                  //       ),
                  //       TextSpan(
                  //         text: 'Akhil T J',
                  //         style: landingDesktopTxt2,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Row(
                    children: [
                      SelectableText(
                        'I’m',
                        style: landingDesktopTxt1,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      SelectableText(
                        'Akhil T J',
                        style: landingDesktopTxt2,
                      ),
                    ],
                  ),
                  SelectableText(
                    'I design, code and',
                    style: landingDesktopTxt1,
                  ),
                  SelectableText(
                    'grow things on',
                    style: landingDesktopTxt1,
                  ),
                  SelectableText(
                    'internet.',
                    style: landingDesktopTxt1,
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Pressed About Me');
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'About Me',
                          style: h2Desktoptxt,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Icon(
                          Icons.east,
                          color: greenColor,
                          size: 26,
                        )
                      ],
                    ),
                  ),
                  AboutmeDesktop(),
                  MoreAboutmeDesktop(),
                  WorksDesktop(),
                  EndingDesktop(),
                  FooterDesktop(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
