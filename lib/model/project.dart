part of 'model.dart';

class Project {
  final String category;
  final String title;
  final String icon;
  final String url;

  Project({
    required this.category,
    required this.title,
    required this.icon,
    required this.url,
  });
}

final List<Project> projectList = [
  Project(
    category: 'Flutter',
    icon: 'assets/icons/ngabolang.png',
    title: 'Ngabolang',
    url: 'https://github.com/IKHSRF/ngabolang-mobile',
  ),
  Project(
    category: 'Flutter',
    icon: 'assets/icons/flutter.png',
    title: 'Prawitama Care',
    url: 'https://github.com/TjandraD/crowdfunding-web',
  ),
  Project(
    category: 'Flutter',
    icon: 'assets/icons/flutter.png',
    title: 'English Whiteboard',
    url: 'https://english-whiteboard.firebaseapp.com/',
  ),
  Project(
    category: 'Flutter',
    icon: 'assets/icons/flutter.png',
    title: 'Pneumonia Prevention',
    url: 'https://github.com/IKHSRF/child-pneumonia-prevention',
  ),
  Project(
    category: 'Laravel',
    icon: 'assets/icons/laravel.png',
    title: 'Geometry Calculator',
    url: 'https://github.com/IKHSRF/geometry_calculator',
  ),
  Project(
    category: 'Flutter',
    icon: 'assets/icons/delivery app.png',
    title: 'Delivery App',
    url: 'https://github.com/IKHSRF/delivery-app',
  ),
  Project(
    category: 'Flutter',
    icon: 'assets/icons/flutter.png',
    title: 'Flutter Portfolio',
    url: 'https://github.com/IKHSRF/flutter-portofolio',
  ),
  Project(
    category: 'Flutter',
    icon: 'assets/icons/meditation.png',
    title: 'Meditation',
    url: 'https://github.com/IKHSRF/Meditation-App',
  ),
  Project(
    category: 'Flutter',
    icon: 'assets/icons/flutter.png',
    title: 'POS',
    url: 'https://github.com/IKHSRF/pos-flutter',
  ),
  Project(
    category: 'Flutter',
    icon: 'assets/icons/flutter.png',
    title: 'Joke App',
    url: 'https://github.com/IKHSRF/joke_app',
  ),
];
