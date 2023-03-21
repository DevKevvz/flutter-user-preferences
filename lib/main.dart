import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preferences/providers/theme_provider.dart';
import 'package:user_preferences/screens/screens.dart';
import 'package:user_preferences/theme/theme.dart';
import 'package:user_preferences/utils/user_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) =>
            ThemeProvider(isDarkMode: UserPreferences.isDarkMode),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Preferences',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SettingsScreen.routeName: (_) => const SettingsScreen()
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
