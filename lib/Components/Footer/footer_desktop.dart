import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:flutter/material.dart';

class FooterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 180),
      child: Container(
        //color: Colors.amber,
        child: Column(
          children: [
            SelectableText(
              'Designed & Build by Akhil T J',
              style: bodyMobiletxt2,
            ),
            SizedBox(height: 2),
            SelectableText(
              'Copyright 2021',
              style: bodyMobiletxt2,
            ),
          ],
        ),
      ),
    );
  }
}
