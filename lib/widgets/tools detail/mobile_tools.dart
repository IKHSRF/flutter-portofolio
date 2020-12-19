import 'package:flutter/material.dart';
import 'package:portofolio/widgets/tools%20item%20card/tools_item_detail.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileTools extends StatelessWidget {
  const MobileTools({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenSize.width * 0.5,
              child: Column(
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
                  SizedBox(height: 20.0),
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
            SizedBox(height: screenSize.width * 0.1),
            Container(
              width: screenSize.width * 0.7,
              child: Column(
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
                  SizedBox(height: 20.0),
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
        );
      },
    );
  }
}
