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
                  height: screenSize.height * .3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: projectList.length,
                    itemBuilder: (context, index) {
                      return ProjectCard(
                        screenSize: screenSize,
                        projectCategory: projectList[index].category,
                        projectIconPath: projectList[index].icon,
                        projectName: projectList[index].title,
                        projectUrl: projectList[index].url,
                      );
                    },
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
