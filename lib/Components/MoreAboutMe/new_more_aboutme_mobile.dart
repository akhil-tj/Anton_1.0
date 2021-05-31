import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

class NewMoreAboutMeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 220),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'More About Me',
            style: navbarDesktopSelectedTxt,
          ),
          SizedBox(
            height: 28,
          ),
          DefaultTabController(
            length: 5,
            initialIndex: 0,
            child: Column(
              children: [
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
                SizedBox(
                  height: 18,
                ),
                Container(
                  //color: Colors.amber,
                  width: double.infinity,
                  height: 200,
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'C',
                                style: navbarTabletDefaultTxt,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'C++',
                                style: navbarTabletDefaultTxt,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Dart',
                                style: navbarTabletDefaultTxt,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Flutter',
                                style: navbarTabletDefaultTxt,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'UI/UX Designing',
                                style: navbarTabletDefaultTxt,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: orangeColor,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Text(''),
                      Text(''),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cochin University of Science & Technology',
                            style: navbarTabletDefaultTxt,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bachelor’s Degree, Information Technology',
                            style: bodyMobiletxt2,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '2018 - Present',
                            style: bodyMobiletxt2,
                          ),
                        ],
                      ),
                      Text(''),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
