import 'package:flutter/material.dart';
import 'package:portofolio/services/url_launcher.dart';
import 'package:portofolio/widgets/background.dart';
import 'package:portofolio/widgets/custom_appbar.dart';

class Contact extends StatelessWidget {
  static const id = '/contact';
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Background(
            screenSize: screenSize,
            assetPath: 'assets/images/contact background.jpg',
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            child: Column(
              children: [
                CustomAppBar(
                  isContact: true,
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  width: screenSize.width * 0.8,
                  height: screenSize.height * 0.75,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: SingleChildScrollView(
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
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.15),
                        Text(
                          'Social Media',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Url.launchInBrowser(
                                    'https://www.linkedin.com/in/ikhsrf/');
                              },
                              child: Image.asset('assets/icons/linkedin.png'),
                            ),
                            SizedBox(width: 10.0),
                            GestureDetector(
                              onTap: () {
                                Url.launchInBrowser(
                                    'https://twitter.com/ikhsan_arfian');
                              },
                              child: Image.asset('assets/icons/twitter.png'),
                            ),
                            SizedBox(width: 10.0),
                            GestureDetector(
                              onTap: () {
                                Url.launchInBrowser(
                                    'https://www.instagram.com/ikhsrf/?hl=id');
                              },
                              child: Image.asset('assets/icons/instagram.png'),
                            ),
                            SizedBox(width: 10.0),
                            GestureDetector(
                              onTap: () {
                                Url.launchInBrowser(
                                    'https://github.com/IKHSRF');
                              },
                              child: Image.asset('assets/icons/Github.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
