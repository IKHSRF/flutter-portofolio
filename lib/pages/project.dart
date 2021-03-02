import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portofolio/widgets/app%20bar/custom_appbar.dart';
import 'package:portofolio/widgets/background/background.dart';
import 'package:portofolio/widgets/project%20card/project_card.dart';

class Project extends StatefulWidget {
  static const id = '/project';
  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> with SingleTickerProviderStateMixin {
  AnimationController _fadeAnimationController;

  @override
  void initState() {
    _fadeAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    Timer(
      Duration(milliseconds: 200),
      () => _fadeAnimationController.forward(),
    );
    super.initState();
  }

  @override
  void dispose() {
    _fadeAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Background(
            screenSize: screenSize,
            assetPath: 'assets/images/project.png',
          ),
          FadeTransition(
            opacity: _fadeAnimationController,
            child: Container(
              padding: EdgeInsets.only(bottom: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: CustomAppBar(
                      isProject: true,
                    ),
                  ),
                  Container(
                    width: screenSize.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ProjectCard(
                            screenSize: screenSize,
                            projectCategory: 'Mobile App',
                            projectIconPath: 'assets/icons/ngabolang.png',
                            projectName: 'Ngabolang',
                            projectUrl:
                                'https://github.com/IKHSRF/ngabolang-mobile',
                          ),
                          ProjectCard(
                            screenSize: screenSize,
                            projectCategory: 'Mobile App',
                            projectIconPath: 'assets/icons/delivery app.png',
                            projectName: 'Delivery App',
                            projectUrl:
                                'https://github.com/IKHSRF/delivery-app',
                          ),
                          ProjectCard(
                            screenSize: screenSize,
                            projectCategory: 'UI UX',
                            projectIconPath: 'assets/icons/meditation.png',
                            projectName: 'Meditation',
                            projectUrl:
                                'https://github.com/IKHSRF/Meditation-App',
                          ),
                          ProjectCard(
                            screenSize: screenSize,
                            projectCategory: 'Mobile App',
                            projectIconPath: 'assets/icons/flutter.png',
                            projectName: 'POS',
                            projectUrl: 'https://github.com/IKHSRF/pos-flutter',
                          ),
                          ProjectCard(
                            screenSize: screenSize,
                            projectCategory: 'Mobile App',
                            projectIconPath: 'assets/icons/flutter.png',
                            projectName: 'Joke App',
                            projectUrl: 'https://github.com/IKHSRF/joke_app',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
