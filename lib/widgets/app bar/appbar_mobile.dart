import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/pages/about.dart';
import 'package:portofolio/pages/contact.dart';
import 'package:portofolio/pages/home.dart';
import 'package:portofolio/pages/project.dart';

class CustomAppBarMobile extends StatelessWidget {
  const CustomAppBarMobile({
    Key key,
    this.isAbout = false,
    this.isProject = false,
    this.isContact = false,
    this.isHome = false,
  }) : super(key: key);
  final bool isAbout;
  final bool isProject;
  final bool isContact;
  final bool isHome;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        TextButton(
          onPressed: () {
            Get.toNamed(HomePage.id);
          },
          child: Text(
            'Ikhsan Arfian',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Spacer(),
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            Get.defaultDialog(
              backgroundColor: Colors.white,
              title: '\nMenu',
              titleStyle: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30.0,
              ),
              content: Container(
                width: screenSize.width * 0.8,
                height: screenSize.height * 0.7,
                padding: EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(HomePage.id);
                      },
                      child: Text(
                        'Home',
                        style: TextStyle(
                          color: isHome ? Colors.blue : Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(About.id);
                      },
                      child: Text(
                        'About Me',
                        style: TextStyle(
                          color: isAbout ? Colors.blue : Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Project.id);
                      },
                      child: Text(
                        'Project',
                        style: TextStyle(
                          color: isProject ? Colors.blue : Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Contact.id);
                      },
                      child: Text(
                        'Contact',
                        style: TextStyle(
                          color: isContact ? Colors.blue : Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
