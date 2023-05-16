import 'package:drawer_flutter/theme.dart';
import 'package:drawer_flutter/widget/navigation_drawer.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff537188),
        title: Text(
          "Profile",
          style: mainContent.copyWith(fontSize: 20),
        ),
      ),
      body: const Center(
        child: Text("Profile Page"),
      ),
      drawer: const NavDrawer(),
    );
  }
}
