import 'package:anton_1_0/Components/Works/work_card.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class WorksMobile extends StatelessWidget {
  const WorksMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 220),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'Works',
                style: navbarDesktopSelectedTxt,
              ),
              Expanded(
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 28,
          ),
          WorkCard(
            imagePath: 'images/Rectangle 16.jpg',
          ),
          SizedBox(
            height: 16,
          ),
          WorkCard(
            imagePath: 'images/Rectangle 17.jpg',
          ),
          SizedBox(
            height: 16,
          ),
          WorkCard(
            imagePath: 'images/Rectangle 23.jpg',
          ),
          SizedBox(height: 48),
          // ignore: deprecated_member_use
          FlatButton(
            padding: EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 14,
            ),
            onPressed: () {
              print('Resume Pressed');
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
