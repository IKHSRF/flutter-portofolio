import 'package:flutter/material.dart';
import 'package:portofolio/services/url_launcher.dart';

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
    return InkWell(
      onTap: () {
        Url.launchInBrowser(projectUrl);
      },
      child: Container(
        margin: EdgeInsets.only(left: 40.0),
        padding: EdgeInsets.fromLTRB(5.0, 30.0, 5.0, 50.0),
        width: screenSize.width * 0.15,
        height: screenSize.height * 0.33,
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
              height: 80.0,
              width: 80.0,
            ),
            Spacer(),
            Text(
              projectCategory,
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            Text(
              projectName,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
