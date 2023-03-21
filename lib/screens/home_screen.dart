import 'package:flutter/material.dart';
import 'package:user_preferences/widgets/widgets.dart';

import '../utils/user_preferences.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(fontSize: 20);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer: const MenuDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: FadeInImage(
                  placeholder: AssetImage('lib/assets/menu-img.jpg'),
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/149/149071.png')),
            ),
            Text(
              'DarkMode: ${UserPreferences.isDarkMode}',
              style: style,
            ),
            const Divider(),
            Text(
              'Gender: ${UserPreferences.gender == 1 ? 'Masculine' : UserPreferences.gender == 2 ? 'Femenine' : 'fluido'}',
              style: style,
            ),
            const Divider(),
            Text(
              'User name: ${UserPreferences.name}',
              style: style,
            ),
            const Divider(),
          ],
        ));
  }
}
