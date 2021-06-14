import 'package:anton_1_0/Components/Works/work_card.dart';
import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WorksDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 180),
      child: Container(
        //color: Colors.orange,
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
                  height: 500,
                  child: WorkCard(
                    imagePath: 'images/ctracker.jpg',
                    workcardbody:
                        'C-tracker is an android app that let\'s shopowners to collect footprints of their customers. Meanwhile the customer can easily scan the QR code and mark their footprints.',
                    knowmoreUrl: 'https://github.com/akhil-tj/Ctracker',
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 300,
                  height: 500,
                  child: WorkCard(
                    imagePath: 'images/qnet_new2.jpg',
                    workcardbody:
                        'Meet our product Qnet. An All-In-One Platform To Meet 80% Of Students Need In School, College or University. Class Scheduling, Attendance Alert, Fee Payment, Academic Status etc.',
                    knowmoreUrl: 'https://github.com/BroCod3/DefHack',
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 300,
                  height: 500,
                  child: WorkCard(
                    imagePath: 'images/anton_mock.jpg',
                    workcardbody:
                        'Anton is a portfolio website. Flutter delivers high-quality PWAs that are integrated with a user’s environment, including installation, offline support, and tailored UX.',
                    knowmoreUrl: 'https://github.com/akhil-tj/Anton_1.0',
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Container(
                  width: 300,
                  height: 450,
                  child: WorkCard(
                    imagePath: 'images/livangle_new.jpg',
                    workcardbody:
                        'UI/UX design of an medical ecomerce application for an android device. Fully designed and prototyped in figma.',
                    knowmoreUrl:
                        'https://www.figma.com/file/StSSBI5wSHY7LwVrJ6QaE2/Livangle-Dev-File?node-id=397%3A11521',
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 300,
                  height: 450,
                  child: WorkCard(
                    imagePath: 'images/ttclub_new.jpg',
                    workcardbody:
                        'UI/UX design of a web dashboard for airline booking, and other travel services. TT Club was fully designed and prototyped in figma.',
                    knowmoreUrl:
                        'https://www.figma.com/file/9QOD7itHjjGAxkP8358e8z/TT-Club-Final-Portfolio?node-id=0%3A1',
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 300,
                  height: 450,
                  child: WorkCard(
                    imagePath: 'images/random_new.jpg',
                    workcardbody:
                        'Includes random design works. UI/UX, posters, logos, vector arts, mockups, emojis, design clones, redesigns, color palettes etc.',
                    knowmoreUrl:
                        'https://www.figma.com/file/7kLvrkq9BaSIcGjB0GiwDV/Random-Portfolio?node-id=0%3A1',
                  ),
                ),
              ],
            ),
            SizedBox(height: 48),
            Row(
              children: [
                SizedBox(
                  width: 420,
                ),

                // ignore: deprecated_member_use
                FlatButton(
                  padding: EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 24,
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Oops! Under Construction",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM_RIGHT,
                        timeInSecForIosWeb: 1,
                        backgroundColor: orangeColor,
                        textColor: Colors.white,
                        fontSize: 16.0);
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
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
