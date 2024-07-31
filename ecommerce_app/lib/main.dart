import 'package:ecommerce_app/utils/appConstants.dart';
import 'package:ecommerce_app/views/pages/customBottomNavbar.dart';
import 'package:flutter/material.dart';
import 'utils/appThemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: appThemes.lightTheme(),
      home: const customBottomNavbar(),
    );
  }
}
