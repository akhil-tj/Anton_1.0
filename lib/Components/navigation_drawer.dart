import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.fromLTRB(24, 40, 24, 16),
        color: navyColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Text(
                'Home',
                style: landingMobileTxt2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Text(
                'Skills',
                style: landingMobileTxt1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Text(
                'Works',
                style: landingMobileTxt1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Text(
                'Contact',
                style: landingMobileTxt1,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(
                        'images/ant-design_twitter-circle-filled.png'),
                    height: 40,
                    width: 40,
                  ),
                  // SizedBox(
                  //   height: 16,
                  // ),
                  Image(
                    image: AssetImage('images/ant-design_github-filled.png'),
                    height: 40,
                    width: 40,
                  ),
                  // SizedBox(
                  //   height: 16,
                  // ),
                  Image(
                    image: AssetImage(
                        'images/entypo-social_linkedin-with-circle.png'),
                    height: 40,
                    width: 40,
                  ),
                  // SizedBox(
                  //   height: 16,
                  // ),
                  Image(
                    image: AssetImage('images/ant-design_instagram-filled.png'),
                    height: 40,
                    width: 40,
                  ),
                  // SizedBox(
                  //   height: 16,
                  // ),
                  Image(
                    image: AssetImage(
                        'images/ant-design_behance-circle-filled.png'),
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Made with ',
                    style: navbarTabletBtnTxt,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text(
                    ' Akhil T J',
                    style: navbarTabletBtnTxt,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ListView(
//           children: [
//             Container(
//               padding: EdgeInsets.symmetric(
//                 vertical: 8,
//                 horizontal: 24,
//               ),
//               child: Text(
//                 'Home',
//                 style: landingMobileTxt2,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(
//                 vertical: 8,
//                 horizontal: 24,
//               ),
//               child: Text(
//                 'Skills',
//                 style: landingMobileTxt1,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(
//                 vertical: 8,
//                 horizontal: 24,
//               ),
//               child: Text(
//                 'Works',
//                 style: landingMobileTxt1,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(
//                 vertical: 8,
//                 horizontal: 24,
//               ),
//               child: Text(
//                 'Contact',
//                 style: landingMobileTxt1,
//               ),
//             ),
//             Container(
//               color: Colors.amber,
//               padding: EdgeInsets.symmetric(
//                 vertical: 14,
//                 horizontal: 16,
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Image(
//                     image: AssetImage(
//                         'images/ant-design_twitter-circle-filled.png'),
//                     height: 40,
//                     width: 40,
//                   ),
//                   // SizedBox(
//                   //   height: 16,
//                   // ),
//                   Image(
//                     image:
//                         AssetImage('images/ant-design_github-filled.png'),
//                     height: 40,
//                     width: 40,
//                   ),
//                   // SizedBox(
//                   //   height: 16,
//                   // ),
//                   Image(
//                     image: AssetImage(
//                         'images/entypo-social_linkedin-with-circle.png'),
//                     height: 40,
//                     width: 40,
//                   ),
//                   // SizedBox(
//                   //   height: 16,
//                   // ),
//                   Image(
//                     image: AssetImage(
//                         'images/ant-design_instagram-filled.png'),
//                     height: 40,
//                     width: 40,
//                   ),
//                   // SizedBox(
//                   //   height: 16,
//                   // ),
//                   Image(
//                     image: AssetImage(
//                         'images/ant-design_behance-circle-filled.png'),
//                     height: 40,
//                     width: 40,
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 24,
//                 vertical: 4,
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Made with ',
//                     style: navbarTabletBtnTxt,
//                   ),
//                   Icon(
//                     Icons.favorite,
//                     color: Colors.red,
//                   ),
//                   Text(
//                     ' Akhil T J',
//                     style: navbarTabletBtnTxt,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),