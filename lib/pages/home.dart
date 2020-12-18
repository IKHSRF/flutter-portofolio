import 'package:flutter/material.dart';
import 'package:portofolio/widgets/app%20bar/custom_appbar.dart';
import 'package:portofolio/widgets/background/background.dart';

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
            assetPath:
                'https://firebasestorage.googleapis.com/v0/b/fir-demo-a9015.appspot.com/o/homepage%20background-min.jpg?alt=media&token=cf431f90-1203-4925-a00f-81441286e3b2',
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
