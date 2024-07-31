import 'package:flutter/material.dart';
import 'appColors.dart';

class appThemes{
  static ThemeData lightTheme() => ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: appColors.primary),
      useMaterial3: true,
  );
}