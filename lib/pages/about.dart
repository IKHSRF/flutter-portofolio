import 'package:flutter/material.dart';
import 'package:portofolio/widgets/app%20bar/custom_appbar.dart';
import 'package:portofolio/widgets/background/background.dart';
import 'package:portofolio/widgets/tools%20detail/desktop_tools.dart';
import 'package:portofolio/widgets/tools%20detail/mobile_tools.dart';
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
                padding: EdgeInsets.fromLTRB(0, 40.0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: sizingInformation.isMobile
                          ? null
                          : EdgeInsets.only(left: 40.0, right: 40.0),
                      child: CustomAppBar(
                        isAbout: true,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: sizingInformation.isMobile
                          ? null
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
              );
            },
          ),
        ],
      ),
    );
  }
}
