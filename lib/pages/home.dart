part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              return Container(
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
              );
            },
          ),
        ],
      ),
    );
  }
}
