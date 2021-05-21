import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          NavBar(),
          LandingPageBody(),
        ],
      ),
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 72,
        vertical: 32,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Home',
            style: navbarSelectedTxt,
          ),
          SizedBox(
            width: 64,
          ),
          Text(
            'Skill',
            style: navbarDefaultTxt,
          ),
          SizedBox(
            width: 64,
          ),
          Text(
            'Work',
            style: navbarDefaultTxt,
          ),
          SizedBox(
            width: 64,
          ),
          Text(
            'Contact',
            style: navbarDefaultTxt,
          ),
          SizedBox(
            width: 64,
          ),
          // ignore: deprecated_member_use
          FlatButton(
            padding: EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 24,
            ),
            onPressed: () {
              print('Resume Pressed');
            },
            color: navyColor,
            child: Text(
              'Resume',
              style: buttonTxt,
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

class LandingPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        72,
        40,
        0,
        0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Image(
                image: AssetImage('images/Line 1.png'),
                height: 90,
              ),
              SizedBox(
                height: 24,
              ),
              Image(
                image:
                    AssetImage('images/ant-design_twitter-circle-filled.png'),
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
                image:
                    AssetImage('images/ant-design_behance-circle-filled.png'),
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
          SizedBox(
            width: 80,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: landingTxt1,
              ),
              Row(
                children: [
                  Text(
                    'I’m',
                    style: landingTxt1,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Akhil T J',
                    style: landingTxt2,
                  ),
                ],
              ),
              Text(
                'I design, code and',
                style: landingTxt1,
              ),
              Text(
                'grow things on',
                style: landingTxt1,
              ),
              Text(
                'internet.',
                style: landingTxt1,
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: h1txt,
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Icon(
                    Icons.visibility_off,
                    color: greenColor,
                    size: 28,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
