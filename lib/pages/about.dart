import 'package:flutter/material.dart';
import 'package:portofolio/widgets/background.dart';
import 'package:portofolio/widgets/custom_appbar.dart';
import 'package:portofolio/widgets/tools_item_detail.dart';

class About extends StatelessWidget {
  static const id = '/about';
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Background(
            screenSize: screenSize,
            assetPath: 'assets/images/about background.jpg',
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                  isAbout: true,
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'I am Mobile Developer\nI have experienced with android\napp development using flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 40.0,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Container(
                        width: screenSize.width * 0.2,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Tools & Technology',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(height: 50.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Tools(
                                      technologyName: 'Firebase',
                                    ),
                                    Tools(
                                      technologyName: 'Dart',
                                    ),
                                    Tools(
                                      technologyName: 'Flutter',
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Tools(
                                      technologyName: 'Git',
                                    ),
                                    Tools(
                                      technologyName: 'Kotlin',
                                    ),
                                    Tools(
                                      technologyName: 'Node.js',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.06),
                      Container(
                        width: screenSize.width * 0.3,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Other & Interpersonal Skills',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(height: 50.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Tools(
                                      technologyName: 'Public Speaking',
                                    ),
                                    Tools(
                                      technologyName: 'Team Work',
                                    ),
                                    Tools(
                                      technologyName: 'Leadership',
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Tools(
                                      technologyName: 'Adobe XD',
                                    ),
                                    Tools(
                                      technologyName: 'Figma',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}