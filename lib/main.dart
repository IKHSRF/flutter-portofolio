import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/pages/about.dart';
import 'package:portofolio/pages/contact.dart';
import 'package:portofolio/pages/home.dart';
import 'package:portofolio/pages/project.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ikhsan Arfian',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat Alternates'),
      initialRoute: HomePage.id,
      getPages: [
        GetPage(
          name: HomePage.id,
          page: () => HomePage(),
        ),
        GetPage(
          name: About.id,
          page: () => About(),
        ),
        GetPage(
          name: Contact.id,
          page: () => Contact(),
        ),
        GetPage(
          name: Project.id,
          page: () => Project(),
        ),
      ],
    );
  }
}
