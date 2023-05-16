import 'package:drawer_flutter/theme.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[buildHeader(context), buildItem(context)],
        ),
      ),
    );
  }

  Widget buildHeader(context) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bgheader.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/profile.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Rehan",
                style: mainContent.copyWith(color: Colors.white),
              ),
              Text(
                "rehan@gmail.com",
                style: subContent.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      );
  Widget buildItem(context) => Container(
        padding: const EdgeInsets.only(top: 20),
        child: Wrap(
          runSpacing: 10,
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: Text(
                "Home",
                style: subContent.copyWith(),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/");
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(
                "Profile",
                style: subContent,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/profile-page");
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(
                "Setting",
                style: subContent,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/setting-page");
              },
            ),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: Text(
                "About",
                style: subContent,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.flag),
              title: Text(
                "Report",
                style: subContent,
              ),
              onTap: () {},
            ),
          ],
        ),
      );
}
