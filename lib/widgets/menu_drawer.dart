import 'package:flutter/material.dart';
import 'package:user_preferences/screens/screens.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, HomeScreen.routeName),
          ),
          const ListTile(
            leading: Icon(Icons.people),
            title: Text('User'),
            // onTap: () => Navigator.pushReplacementNamed(
            //     context, SettingsScreen.routeName),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => Navigator.pushReplacementNamed(
                context, SettingsScreen.routeName),
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader();

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('lib/assets/menu-img.jpg'), fit: BoxFit.cover),
      ),
      child: SizedBox(),
    );
  }
}
