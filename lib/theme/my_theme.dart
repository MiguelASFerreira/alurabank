import 'package:alurabank/theme/themes_colors.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ThemeData MyTheme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  primarySwatch: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  fontFamily: "Raleway",
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal
    ),
  )
);