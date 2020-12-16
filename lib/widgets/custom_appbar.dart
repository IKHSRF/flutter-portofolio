import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/pages/about.dart';
import 'package:portofolio/pages/contact.dart';
import 'package:portofolio/pages/home.dart';
import 'package:portofolio/pages/project.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
    this.isAbout = false,
    this.isProject = false,
    this.isContact = false,
  }) : super(key: key);
  final bool isAbout;
  final bool isProject;
  final bool isContact;

  @override
  Widget build(BuildContext context) {
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
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: FlatButton(
            onPressed: () {
              Get.toNamed(About.id);
            },
            child: Container(
              width: 180,
              height: 60,
              decoration: isAbout
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.3),
                    )
                  : null,
              child: Center(
                child: Text(
                  'About Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: FlatButton(
            onPressed: () {
              Get.toNamed(Project.id);
            },
            child: Container(
              width: 160,
              height: 60,
              decoration: isProject
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.3),
                    )
                  : null,
              child: Center(
                child: Text(
                  'Project',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: FlatButton(
            onPressed: () {
              Get.toNamed(Contact.id);
            },
            child: Container(
              width: 160,
              height: 60,
              decoration: isContact
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.3),
                    )
                  : null,
              child: Center(
                child: Text(
                  'Contact',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
