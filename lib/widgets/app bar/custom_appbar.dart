import 'package:flutter/material.dart';
import 'package:portofolio/widgets/app%20bar/appbar_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'appbar_mobile.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
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
    return ScreenTypeLayout(
      mobile: CustomAppBarMobile(
        isAbout: isAbout,
        isProject: isProject,
        isContact: isContact,
        isHome: isHome,
      ),
      tablet: CustomAppBarMobile(
        isAbout: isAbout,
        isProject: isProject,
        isContact: isContact,
        isHome: isHome,
      ),
      desktop: CustomAppBarDesktop(
        isAbout: isAbout,
        isProject: isProject,
        isContact: isContact,
      ),
    );
  }
}
