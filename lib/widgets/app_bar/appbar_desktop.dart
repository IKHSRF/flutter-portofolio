part of '../widgets.dart';

class CustomAppBarDesktop extends StatelessWidget {
  const CustomAppBarDesktop({
    Key? key,
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
            Modular.to.pushNamed('/');
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
          child: TextButton(
            onPressed: () {
              Modular.to.pushNamed('/about');
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
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: TextButton(
            onPressed: () {
              Modular.to.pushNamed('/project');
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
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: TextButton(
            onPressed: () {
              Modular.to.pushNamed('/contact');
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
                    fontSize: 20,
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
