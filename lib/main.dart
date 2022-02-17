import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'routes/main.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    ModularApp(
      module: MainRoute(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ikhsan Arfian',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat Alternates'),
      initialRoute: '/',
    ).modular();
  }
}
