import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portofolio/widgets/app%20bar/custom_appbar.dart';
import 'package:portofolio/widgets/background/background.dart';
import 'package:portofolio/widgets/tools%20detail/desktop_tools.dart';
import 'package:portofolio/widgets/tools%20detail/mobile_tools.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatefulWidget {
  static const id = '/about';

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> with SingleTickerProviderStateMixin {
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
            assetPath: 'assets/images/about.jpg',
          ),
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              return FadeTransition(
                opacity: _fadeAnimationController,
                child: Container(
                  padding: EdgeInsets.fromLTRB(40.0, 40.0, 10.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        isAbout: true,
                      ),
                      Spacer(),
                      Container(
                        padding: sizingInformation.isMobile
                            ? EdgeInsets.only(left: 0, right: 0)
                            : EdgeInsets.only(left: 20.0),
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
                        padding: sizingInformation.isMobile
                            ? null
                            : EdgeInsets.only(left: 20.0, right: 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: sizingInformation.isMobile
                              ? Axis.vertical
                              : Axis.horizontal,
                          child: sizingInformation.isMobile
                              ? MobileTools(screenSize: screenSize)
                              : DesktopTools(screenSize: screenSize),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
