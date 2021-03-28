import 'package:biodata/game-page.dart';
import 'package:flutter/material.dart';
import 'package:biodata/belajar-navigation.dart';
import 'package:biodata/nav-drawer.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BelajarFlutter.com",
      initialRoute: 'BelajarNavigationDrawer',
      routes: {
        'BelajarNavigationDrawer': (context) => BelajarNavigationDrawer(),
        'GamePage': (context) => GamePage(),
      },
    );
  }
}
