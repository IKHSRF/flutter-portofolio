import 'package:flutter/material.dart';
import 'package:portofolio/widgets/background.dart';
import 'package:portofolio/widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  static const id = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Background(
            screenSize: screenSize,
            assetPath: 'assets/images/homepage background.jpg',
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            child: Column(
              children: [
                CustomAppBar(),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(left: 25.0),
                  width: screenSize.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, I'm\nIkhsan Arfian!",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 80.0,
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
                          fontSize: 30.0,
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
