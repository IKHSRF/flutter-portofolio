part of 'pages.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
              return Container(
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
                        'I am Mobile Developer\nI have experienced with mobile\napp development',
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
