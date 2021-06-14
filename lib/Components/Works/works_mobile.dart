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
            knowmoreUrl: 'https://github.com/akhil-tj/Ctracker',
          ),
          SizedBox(
            height: 16,
          ),
          WorkCard(
            imagePath: 'images/qnet_new2.jpg',
            workcardbody:
                'Meet our product Qnet. An All-In-One Platform To Meet 80% Of Students Need In School, College or University. Class Scheduling, Attendance Alert, Fee Payment, Academic Status etc.',
            knowmoreUrl: 'https://github.com/BroCod3/DefHack',
          ),
          SizedBox(
            height: 16,
          ),
          WorkCard(
            imagePath: 'images/anton_mock.jpg',
            workcardbody:
                'Anton is a portfolio website. Flutter delivers high-quality PWAs that are integrated with a user’s environment, including installation, offline support, and tailored UX.',
            knowmoreUrl: 'https://github.com/akhil-tj/Anton_1.0',
          ),
          SizedBox(
            height: 16,
          ),
          WorkCard(
            imagePath: 'images/livangle_new.jpg',
            workcardbody:
                'UI/UX design of an medical ecomerce application for an android device. Fully designed and prototyped in figma.',
            knowmoreUrl: 'https://twitter.com/akhil__tj',
          ),
          SizedBox(
            height: 16,
          ),
          WorkCard(
            imagePath: 'images/ttclub_new.jpg',
            workcardbody:
                'UI/UX design of a web dashboard for airline booking, and other travel services. TT Club was fully designed and prototyped in figma.',
            knowmoreUrl: 'https://twitter.com/akhil__tj',
          ),
          SizedBox(
            height: 16,
          ),
          WorkCard(
            imagePath: 'images/random_new.jpg',
            workcardbody:
                'Includes random design works. UI/UX, posters, logos, vector arts, mockups, emojis, design clones, redesigns, color palettes etc.',
            knowmoreUrl: 'https://twitter.com/akhil__tj',
          ),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
