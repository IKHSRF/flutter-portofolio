part of 'pages.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Background(
            screenSize: screenSize,
            assetPath: 'assets/images/contact.jpg',
          ),
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              return Container(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    CustomAppBar(
                      isContact: true,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      width: screenSize.width * 0.8,
                      height: screenSize.height * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: screenSize.height * 0.3),
                          Text(
                            'Contact Me',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: screenSize.height * 0.015),
                          Text(
                            'Ikhsan3568@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: sizingInformation.isMobile
                                  ? 25.0
                                  : sizingInformation.isTablet
                                      ? 30.0
                                      : 40.0,
                            ),
                          ),
                          SizedBox(height: screenSize.height * 0.1),
                          Text(
                            'Social Media',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SocialMediaButton(
                                socialUrl:
                                    'https://www.linkedin.com/in/ikhsrf/',
                                socialIconPath: 'assets/icons/linkedin.png',
                              ),
                              SocialMediaButton(
                                socialUrl: 'https://twitter.com/ikhsan_arfian',
                                socialIconPath: 'assets/icons/twitter.png',
                              ),
                              SocialMediaButton(
                                socialUrl:
                                    'https://www.instagram.com/ikhsrf/?hl=id',
                                socialIconPath: 'assets/icons/instagram.png',
                              ),
                              SocialMediaButton(
                                socialUrl: 'https://www.github.com/ikhsrf',
                                socialIconPath: 'assets/icons/Github.png',
                                width: 30.0,
                                height: 30.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
