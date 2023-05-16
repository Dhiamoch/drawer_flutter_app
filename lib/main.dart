import 'package:drawer_flutter/pages/profile_page.dart';
import 'package:drawer_flutter/pages/setting_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
        '/profile-page': (context) => const ProfilePage(),
        '/setting-page': (context) => const SettingPage(),
      },
      // title: 'Flutter Demo',
      // home: const MyHomePage(),
    );
  }
}
