import 'package:flutter/material.dart';
import 'package:user_preferences/theme/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeProvider({required isDarkMode})
      : currentTheme = isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme;

  setLightMode() {
    currentTheme = AppTheme.lightTheme;
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = AppTheme.darkTheme;
    notifyListeners();
  }
}
