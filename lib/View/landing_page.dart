import 'package:anton_1_0/Components/Landing/landing_desktop.dart';
import 'package:anton_1_0/Components/Landing/landing_mobile.dart';
import 'package:anton_1_0/Components/Landing/landing_tablet.dart';
import 'package:anton_1_0/Components/Navbar/navbar_mobile.dart';
import 'package:anton_1_0/Components/Navbar/navbar_tablet.dart';
import 'package:anton_1_0/Components/Navbar/navbar_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ScreenTypeLayout(
            mobile: NavbarMobile(),
            tablet: NavbarTablet(),
            desktop: NavbarDesktop(),
          ),
          ScreenTypeLayout(
            mobile: LandingMobile(),
            tablet: LandingTablet(),
            desktop: LandingDesktop(),
          )
        ],
      ),
    );
  }
}
