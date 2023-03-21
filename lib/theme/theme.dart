import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;
  static const Color darkPrimary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      //primary color
      primaryColor: primary,
      //appbar theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      //TextButton theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),
      //floatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 10),
      //ElevatedButtontheme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              shape: const StadiumBorder(),
              elevation: 5)),
      //inputDecorationTheme
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //primary color
      useMaterial3: true,
      primaryColor: darkPrimary,
      //appbar theme
      appBarTheme: const AppBarTheme(
        color: darkPrimary,
        elevation: 0,
      ),
      //TextButton theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: darkPrimary),
      ),
      //floatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: darkPrimary, elevation: 10),
      //ElevatedButtontheme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: darkPrimary,
              shape: const StadiumBorder(),
              elevation: 5)),
      //inputDecorationTheme
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: darkPrimary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: darkPrimary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: darkPrimary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))));
}
