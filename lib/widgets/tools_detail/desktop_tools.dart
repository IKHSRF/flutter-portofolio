part of '../widgets.dart';

class DesktopTools extends StatelessWidget {
  const DesktopTools({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tools & Technology',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sizingInformation.isMobile
                        ? 15.0
                        : sizingInformation.isTablet
                            ? 20.0
                            : 30.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Tools(
                          technologyName: 'Firebase',
                        ),
                        Tools(
                          technologyName: 'Dart',
                        ),
                        Tools(
                          technologyName: 'Flutter',
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Tools(
                          technologyName: 'Git',
                        ),
                        Tools(
                          technologyName: 'Kotlin',
                        ),
                        Tools(
                          technologyName: 'Node.js',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: screenSize.width * 0.06),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Other & Interpersonal Skills',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sizingInformation.isMobile
                        ? 15.0
                        : sizingInformation.isTablet
                            ? 20.0
                            : 30.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Tools(
                          technologyName: 'Public Speaking',
                        ),
                        Tools(
                          technologyName: 'Team Work',
                        ),
                        Tools(
                          technologyName: 'Leadership',
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Tools(
                          technologyName: 'Adobe XD',
                        ),
                        Tools(
                          technologyName: 'Figma',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
