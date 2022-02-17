part of 'pages.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Background(
            screenSize: screenSize,
            assetPath: 'assets/images/project.png',
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(40.0),
                  child: CustomAppBar(
                    isProject: true,
                  ),
                ),
                SizedBox(
                  width: screenSize.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProjectCard(
                          screenSize: screenSize,
                          projectCategory: 'Flutter',
                          projectIconPath: 'assets/icons/ngabolang.png',
                          projectName: 'Ngabolang',
                          projectUrl:
                              'https://github.com/IKHSRF/ngabolang-mobile',
                        ),
                        ProjectCard(
                          screenSize: screenSize,
                          projectCategory: 'Flutter',
                          projectIconPath: 'assets/icons/flutter.png',
                          projectName: 'Prawitama Care',
                          projectUrl:
                              'https://github.com/TjandraD/crowdfunding-web',
                        ),
                        ProjectCard(
                          screenSize: screenSize,
                          projectCategory: 'Flutter',
                          projectIconPath: 'assets/icons/flutter.png',
                          projectName: 'English Whiteboard',
                          projectUrl:
                              'https://english-whiteboard.firebaseapp.com/',
                        ),
                        ProjectCard(
                          screenSize: screenSize,
                          projectCategory: 'Flutter',
                          projectIconPath: 'assets/icons/flutter.png',
                          projectName: 'Pneumonia Prevention',
                          projectUrl:
                              'https://github.com/IKHSRF/child-pneumonia-prevention',
                        ),
                        ProjectCard(
                          screenSize: screenSize,
                          projectCategory: 'Laravel',
                          projectIconPath: 'assets/icons/laravel.png',
                          projectName: 'Geometry Calculator',
                          projectUrl:
                              'https://github.com/IKHSRF/geometry_calculator',
                        ),
                        ProjectCard(
                          screenSize: screenSize,
                          projectCategory: 'Flutter',
                          projectIconPath: 'assets/icons/delivery app.png',
                          projectName: 'Delivery App',
                          projectUrl: 'https://github.com/IKHSRF/delivery-app',
                        ),
                        ProjectCard(
                          screenSize: screenSize,
                          projectCategory: 'Flutter',
                          projectIconPath: 'assets/icons/flutter.png',
                          projectName: 'Flutter Portfolio',
                          projectUrl:
                              'https://github.com/IKHSRF/flutter-portofolio',
                        ),
                        ProjectCard(
                          screenSize: screenSize,
                          projectCategory: 'Flutter',
                          projectIconPath: 'assets/icons/meditation.png',
                          projectName: 'Meditation',
                          projectUrl:
                              'https://github.com/IKHSRF/Meditation-App',
                        ),
                        ProjectCard(
                          screenSize: screenSize,
                          projectCategory: 'Flutter',
                          projectIconPath: 'assets/icons/flutter.png',
                          projectName: 'POS',
                          projectUrl: 'https://github.com/IKHSRF/pos-flutter',
                        ),
                        ProjectCard(
                          screenSize: screenSize,
                          projectCategory: 'Flutter',
                          projectIconPath: 'assets/icons/flutter.png',
                          projectName: 'Joke App',
                          projectUrl: 'https://github.com/IKHSRF/joke_app',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
