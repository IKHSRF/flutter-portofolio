import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portofolio/widgets/app%20bar/custom_appbar.dart';
import 'package:portofolio/widgets/background/background.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  static const id = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
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
            assetPath: 'assets/images/home.jpg',
          ),
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              return FadeTransition(
                opacity: _fadeAnimationController,
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      CustomAppBar(
                        isHome: true,
                      ),
                      Spacer(),
                      Container(
                        padding: sizingInformation.isMobile
                            ? null
                            : EdgeInsets.only(left: 20.0),
                        width: screenSize.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, I'm\nIkhsan Arfian!",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize:
                                    sizingInformation.isMobile ? 35.0 : 50.0,
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height * 0.05,
                            ),
                            Text(
                              'Mobile Developer / \nFlutter Developer',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    sizingInformation.isMobile ? 20.0 : 30.0,
                              ),
                            )
                          ],
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
