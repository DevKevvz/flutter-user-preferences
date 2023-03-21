import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preferences/utils/user_preferences.dart';

import '../providers/theme_provider.dart';
import '../widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const String routeName = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // bool isDarMode = false;
  // int gender = 1;
  // String name = 'Kevin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: const MenuDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                ),
                const Divider(),
                SwitchListTile.adaptive(
                  title: const Text(
                    'Dark Mode',
                    style: TextStyle(fontSize: 20),
                  ),
                  value: UserPreferences.isDarkMode,
                  onChanged: (value) {
                    UserPreferences.isDarkMode = value;
                    final themeProvider =
                        Provider.of<ThemeProvider>(context, listen: false);

                    value
                        ? themeProvider.setDarkMode()
                        : themeProvider.setLightMode();
                    setState(() {});
                  },
                ),
                const Divider(),
                RadioListTile<int>(
                  title: const Text(
                    'Masculine',
                    style: TextStyle(fontSize: 20),
                  ),
                  value: 1,
                  groupValue: UserPreferences.gender,
                  onChanged: (value) {
                    setState(() {
                      UserPreferences.gender = value ?? 1;
                    });
                  },
                ),
                const Divider(),
                RadioListTile<int>(
                  title: const Text(
                    'Feminine',
                    style: TextStyle(fontSize: 20),
                  ),
                  value: 2,
                  groupValue: UserPreferences.gender,
                  onChanged: (value) {
                    setState(() {
                      UserPreferences.gender = value ?? 2;
                    });
                  },
                ),
                const Divider(),
                TextFormField(
                  onChanged: (value) {
                    setState(() {
                      UserPreferences.name = value;
                    });
                  },
                  initialValue: UserPreferences.name,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    helperText: 'Name of user',
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
