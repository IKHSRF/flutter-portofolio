import 'package:flutter/material.dart';
import 'package:portofolio/widgets/app%20bar/custom_appbar.dart';
import 'package:portofolio/widgets/background/background.dart';
import 'package:portofolio/widgets/tools%20item%20card/tools_item_detail.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
            assetPath:
                'https://firebasestorage.googleapis.com/v0/b/fir-demo-a9015.appspot.com/o/about%20background-min.jpg?alt=media&token=1b8f29e4-fdfc-46e0-b497-3c7f70d2e544',
          ),
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              return Container(
                padding: EdgeInsets.fromLTRB(40.0, 40.0, 0, 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 40.0),
                      child: CustomAppBar(
                        isAbout: true,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'I am Mobile Developer\nI have experienced with android\napp development using flutter',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: sizingInformation.isMobile
                              ? 21.0
                              : sizingInformation.isTablet
                                  ? 30.0
                                  : 40.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tools & Technology',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: sizingInformation.isMobile
                                        ? 15.0
                                        : sizingInformation.isTablet
                                            ? 20.0
                                            : 30.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 50.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                            SizedBox(width: screenSize.width * 0.06),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Other & Interpersonal Skills',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: sizingInformation.isMobile
                                        ? 15.0
                                        : sizingInformation.isTablet
                                            ? 20.0
                                            : 30.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 50.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
