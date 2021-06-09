import 'package:anton_1_0/Components/Works/work_card.dart';
import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';

class WorksDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 180),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Works',
              style: h1Desktoptxt,
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Container(
                  width: 300,
                  child: WorkCard(
                    imagePath: 'images/Rectangle 16.jpg',
                    workcardbody:
                        'Turpis et habitant sapien bibendum nunc eget quis. Dictum eu ut sagittis, augue faucibus amet, laoreet cras sollicitudin.',
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 300,
                  child: WorkCard(
                    imagePath: 'images/Rectangle 17.jpg',
                    workcardbody:
                        'Turpis et habitant sapien bibendum nunc eget quis. Dictum eu ut sagittis, augue faucibus amet, laoreet cras sollicitudin.',
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 300,
                  child: WorkCard(
                    imagePath: 'images/Rectangle 23.jpg',
                    workcardbody:
                        'Turpis et habitant sapien bibendum nunc eget quis. Dictum eu ut sagittis, augue faucibus amet, laoreet cras sollicitudin.',
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Container(
                  width: 300,
                  child: WorkCard(
                    imagePath: 'images/Rectangle 16.jpg',
                    workcardbody:
                        'Turpis et habitant sapien bibendum nunc eget quis. Dictum eu ut sagittis, augue faucibus amet, laoreet cras sollicitudin.',
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 300,
                  child: WorkCard(
                    imagePath: 'images/Rectangle 17.jpg',
                    workcardbody:
                        'Turpis et habitant sapien bibendum nunc eget quis. Dictum eu ut sagittis, augue faucibus amet, laoreet cras sollicitudin.',
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 300,
                  child: WorkCard(
                    imagePath: 'images/Rectangle 23.jpg',
                    workcardbody:
                        'Turpis et habitant sapien bibendum nunc eget quis. Dictum eu ut sagittis, augue faucibus amet, laoreet cras sollicitudin.',
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
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
                style: navbarDesktopBtnTxt,
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: greenColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
            )
          ],
        ),
      ),
    );
  }
}
