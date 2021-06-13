import 'package:flutter/material.dart';

class SocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(72, 162, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image(
              image: AssetImage('images/Line 1.png'),
              height: 90,
            ),
            SizedBox(
              height: 24,
            ),
            Image(
              image: AssetImage('images/ant-design_twitter-circle-filled.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 16,
            ),
            Image(
              image: AssetImage('images/ant-design_github-filled.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 16,
            ),
            Image(
              image:
                  AssetImage('images/entypo-social_linkedin-with-circle.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 16,
            ),
            Image(
              image: AssetImage('images/ant-design_instagram-filled.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 16,
            ),
            Image(
              image: AssetImage('images/ant-design_behance-circle-filled.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 16,
            ),
            Image(
              image: AssetImage('images/Line 1.png'),
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
