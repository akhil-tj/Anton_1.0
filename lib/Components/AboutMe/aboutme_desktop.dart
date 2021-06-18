import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';

class AboutmeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 180),
      child: Container(
        //color: Colors.deepPurple,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //color: Colors.amberAccent,
              width: 675,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    'About Me',
                    style: h1Desktoptxt,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SelectableText(
                    'I\'m an aspiring engineering student specialized in Information Technology, who fell in love with technology during the early days of childhood. I have a passion for designing, which keeps me motivated in this competitive world.',
                    style: bodyDesktoptxt,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SelectableText(
                    'I\'m a team palyer who likes to socialise & engage in community activities.',
                    style: bodyDesktoptxt,
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Pressed More About Me');
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'More About Me',
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
                ],
              ),
            ),
            SizedBox(width: 80),
            Container(
              //color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 220),
                child: Image(
                  image: AssetImage('images/profile pic desktop.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
