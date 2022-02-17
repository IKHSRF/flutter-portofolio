part of '../widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
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
