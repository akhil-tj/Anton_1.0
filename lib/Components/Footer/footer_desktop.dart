import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:flutter/material.dart';

class FooterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 220),
      child: Container(
        //color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Container()),
            Column(
              children: [
                SelectableText(
                  'Designed & Build by Akhil T J',
                  style: tabSubHeadingDesktoptxt,
                ),
                SizedBox(height: 2),
                SelectableText(
                  'Copyright 2021',
                  style: tabSubHeadingDesktoptxt,
                ),
              ],
            ),
            SizedBox(width: 232),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
