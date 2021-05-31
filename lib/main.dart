import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/View/landing_page.dart';
import 'package:anton_1_0/Components/Navbar/navigation_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       primary: Colors.white60,
      //     ),
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavigationDrawer(),
        backgroundColor: Color(0xff01002D),
        body: SafeArea(
          child: LandingPage(),
        ),
      ),
    );
  }
}
