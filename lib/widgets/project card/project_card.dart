import 'package:flutter/material.dart';
import 'package:portofolio/services/url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key key,
    @required this.screenSize,
    @required this.projectIconPath,
    @required this.projectCategory,
    @required this.projectName,
    @required this.projectUrl,
  }) : super(key: key);

  final Size screenSize;
  final String projectIconPath;
  final String projectCategory;
  final String projectName;
  final String projectUrl;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return InkWell(
          onTap: () {
            Url.launchInBrowser(projectUrl);
          },
          child: Container(
            margin: EdgeInsets.only(left: 40.0),
            padding: EdgeInsets.fromLTRB(0, 30.0, 0, 30.0),
            width: sizingInformation.isMobile
                ? screenSize.width * 0.3
                : sizingInformation.isTablet
                    ? screenSize.width * 0.27
                    : screenSize.width * 0.2,
            height: sizingInformation.isMobile
                ? screenSize.height * 0.25
                : screenSize.height * 0.3,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.21),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  projectIconPath,
                  height: sizingInformation.isMobile
                      ? 50.0
                      : sizingInformation.isTablet
                          ? 50.0
                          : 70.0,
                  width: sizingInformation.isMobile
                      ? 50.0
                      : sizingInformation.isTablet
                          ? 50.0
                          : 70.0,
                ),
                Spacer(),
                Text(
                  projectCategory,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sizingInformation.isMobile ? 11.0 : 14.0,
                  ),
                ),
                Spacer(),
                Text(
                  projectName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: sizingInformation.isMobile
                        ? 15.0
                        : sizingInformation.isTablet
                            ? 17.0
                            : 25.0,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
