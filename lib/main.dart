import 'package:flutter/material.dart';
import 'package:free_music/common/values/values.dart';
import 'package:free_music/pages/welcome/welcome.dart';
import 'package:free_music/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Free Music",
      color: AppColors.primaryBackground,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primaryText,
      ),
      home: const Welcome(),
      routes: staticRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
