//flutter build web --web-renderer html --release

import 'package:anton_1_0/View/landing_page.dart';
import 'package:anton_1_0/Components/Navbar/navigation_drawer.dart';
import 'package:anton_1_0/Widgets/DesktopWidgets/social_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: ScreenTypeLayout(
          desktop: SocialBar(),
          mobile: Container(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        drawer: NavigationDrawer(),
        backgroundColor: Color(0xff01002D),
        body: SafeArea(
          child: LandingPage(),
        ),
      ),
    );
  }
}
