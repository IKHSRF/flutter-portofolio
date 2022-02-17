part of '../widgets.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key? key,
    required this.socialUrl,
    required this.socialIconPath,
    this.width = 40.0,
    this.height = 40.0,
  }) : super(key: key);

  final String socialUrl;
  final String socialIconPath;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return GestureDetector(
          onTap: () {
            Url.launchInBrowser(socialUrl);
          },
          child: Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Image.asset(
              socialIconPath,
              width: width,
              height: height,
            ),
          ),
        );
      },
    );
  }
}
