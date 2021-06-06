import 'package:anton_1_0/Components/Works/work_card.dart';
import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class WorksMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 180),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SelectableText(
                'Works',
                style: navbarDesktopSelectedTxt,
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
          SizedBox(
            height: 28,
          ),
          WorkCard(
            imagePath: 'images/Rectangle 16.jpg',
            workcardbody:
                'Turpis et habitant sapien bibendum nunc eget quis. Dictum eu ut sagittis, augue faucibus amet, laoreet cras sollicitudin.',
          ),
          SizedBox(
            height: 16,
          ),
          WorkCard(
            imagePath: 'images/Rectangle 17.jpg',
            workcardbody:
                'Turpis et habitant sapien bibendum nunc eget quis. Dictum eu ut sagittis, augue faucibus amet, laoreet cras sollicitudin.',
          ),
          SizedBox(
            height: 16,
          ),
          WorkCard(
            imagePath: 'images/Rectangle 23.jpg',
            workcardbody:
                'Turpis et habitant sapien bibendum nunc eget quis. Dictum eu ut sagittis, augue faucibus amet, laoreet cras sollicitudin.',
          ),
          SizedBox(height: 48),
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
          )
        ],
      ),
    );
  }
}
