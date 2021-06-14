import 'package:anton_1_0/Components/Works/work_card.dart';
import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
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
            imagePath: 'images/ctracker.jpg',
            workcardbody:
                'C-tracker is an android app that let\'s shopowners to collect footprints of their customers. Meanwhile the customer can easily scan the QR code and mark their footprints.',
          ),
          SizedBox(
            height: 16,
          ),
          WorkCard(
            imagePath: 'images/qnet_new2.jpg',
            workcardbody:
                'Meet our product Qnet. An All-In-One Platform To Meet 80% Of Students Need In School, College or University. Class Scheduling, Attendance Alert, Fee Payment, Academic Status etc.',
          ),
          SizedBox(
            height: 16,
          ),
          WorkCard(
            imagePath: 'images/anton_mock.jpg',
            workcardbody:
                'Anton is a portfolio website. Flutter delivers high-quality PWAs that are integrated with a user’s environment, including installation, offline support, and tailored UX.',
          ),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
