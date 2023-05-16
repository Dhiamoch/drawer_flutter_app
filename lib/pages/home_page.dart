import 'package:drawer_flutter/theme.dart';
import 'package:drawer_flutter/widget/navigation_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff537188),
        title: Text(
          "Home",
          style: mainContent.copyWith(fontSize: 20),
        ),
      ),
      drawer: const NavDrawer(),
      body: const Center(
        child: Text("HOME"),
      ),
    );
  }
}
