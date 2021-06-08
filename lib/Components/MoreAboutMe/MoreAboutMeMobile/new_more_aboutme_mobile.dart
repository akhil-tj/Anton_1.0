import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/list_achievement.dart';
import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/list_education.dart';
import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/list_experence.dart';
import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/list_volunteer.dart';
import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/new_list_skills.dart';
import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';

class NewMoreAboutMeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Padding(
        padding: EdgeInsets.only(top: 180),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'More About Me',
              style: navbarDesktopSelectedTxt,
            ),
            SizedBox(
              height: 28,
            ),
            TabBar(
              indicatorColor: greenColor,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'Skills',
                    style: tabMobiletxt,
                  ),
                ),
                Tab(
                  child: Text(
                    'Experience',
                    style: tabMobiletxt,
                  ),
                ),
                Tab(
                  child: Text(
                    'Achievment',
                    style: tabMobiletxt,
                  ),
                ),
                Tab(
                  child: Text(
                    'Education',
                    style: tabMobiletxt,
                  ),
                ),
                Tab(
                  child: Text(
                    'Volunteer',
                    style: tabMobiletxt,
                  ),
                ),
              ],
            ),
            // Divider(
            //   color: Colors.blueGrey,
            // ),
            SizedBox(
              height: 18,
            ),
            Container(
              //color: Colors.lightBlue,
              height: 420,
              child: TabBarView(
                children: [
                  NewListSkills(),
                  ListExperence(),
                  ListAchievement(),
                  ListEducation(),
                  ListVolunteer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
