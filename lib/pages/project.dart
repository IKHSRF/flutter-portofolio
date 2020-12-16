import 'package:flutter/material.dart';
import 'package:portofolio/widgets/background.dart';

class Project extends StatefulWidget {
  static const id = '/project';
  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
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
        ],
      ),
    );
  }
}
