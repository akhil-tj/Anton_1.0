import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/info_education.dart';
import 'package:anton_1_0/Components/MoreAboutMe/MoreAboutMeMobile/rating_skill.dart';
import 'package:anton_1_0/Style/DesktopStyles/text_desktop.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:flutter/material.dart';

class VerticalTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: 200,
                  color: navyColor,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: TabBar(
                      indicatorColor: greenColor,
                      indicatorWeight: 3.0,
                      labelStyle: bodyDesktoptxt,
                      unselectedLabelColor: Colors.blueGrey,
                      tabs: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 18),
                                Text(
                                  'Skills',
                                ),
                              ],
                            ),
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 18),
                                Text(
                                  'Achievements',
                                ),
                              ],
                            ),
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 18),
                                Text(
                                  'Education',
                                ),
                              ],
                            ),
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 18),
                                Text(
                                  'Volunteer',
                                ),
                              ],
                            ),
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 18),
                                Text(
                                  'Experience',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 24),
                    GestureDetector(
                      onTap: () {
                        print('Pressed About Me');
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Works',
                            style: h2Desktoptxt,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Icon(
                            Icons.east,
                            color: greenColor,
                            size: 26,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 72,
            ),
            Container(
              height: 500,
              width: 800,
              child: TabBarView(
                //physics: NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    child: Column(
                      children: [
                        RatingSkill('C', '70%', 3),
                        SizedBox(height: 16),
                        RatingSkill('C++', '80%', 5),
                        SizedBox(height: 16),
                        RatingSkill('Dart', '50%', 1),
                        SizedBox(height: 16),
                        RatingSkill('Flutter', '50%', 1),
                        SizedBox(height: 16),
                        RatingSkill('UI/UX Designing', '80%', 5),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoEducation(
                          'Make-A-Ton CUSAT',
                          'Hack 4 CUSAT Category Winner',
                          '2020',
                        ),
                        SizedBox(height: 16),
                        InfoEducation(
                          'Def Hacks Global 2.0',
                          'Education Track Winner',
                          '2020',
                        ),
                        SizedBox(height: 16),
                        InfoEducation(
                          'Bengaluru Moving Hackathon',
                          'Top 22 Solutions',
                          '2020',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoEducation(
                          'Cochin University College of Engineering Kuttand',
                          'Bachelor’s Degree, Information Technology',
                          '2018 - Present',
                        ),
                        SizedBox(height: 16),
                        InfoEducation(
                          'St.Antony’s Public School',
                          'Higher Secondry Education, Computer Science',
                          '2016 - 2018',
                        ),
                        SizedBox(height: 16),
                        InfoEducation(
                          'Notre Dame School',
                          'Primary Education, All Primary Subjects',
                          '2004 - 2016',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoEducation(
                          'TinkerHub CUCEK',
                          'Creative Lead',
                          '2019 - 2021',
                        ),
                        SizedBox(height: 16),
                        InfoEducation(
                          'Hack Club CUCEK',
                          'Co Lead',
                          '2019 - 2021',
                        ),
                        SizedBox(height: 16),
                        InfoEducation(
                          'School of Innovation India from Facebook',
                          'Spark AR Facilitator',
                          '2020 - Present',
                        ),
                        SizedBox(height: 16),
                        InfoEducation(
                          'Designer Me CUCEK',
                          'Community Manger',
                          '2020 - Present',
                        ),
                        SizedBox(height: 16),
                        InfoEducation(
                          'Student Developer Society',
                          'Volunteer, Design Team',
                          '2020 - Present',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InfoEducation(
                          'Freelance Designer',
                          'UI/UX Designing',
                          '2020 - Present',
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
