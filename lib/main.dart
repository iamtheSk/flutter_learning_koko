// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:initalproject/pages/Settings_page.dart';
import 'package:initalproject/pages/first_page.dart';
import 'package:initalproject/pages/home_page.dart';
import 'package:initalproject/pages/profile_page.dart';
import 'package:initalproject/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // final names = ['salman', 'vivek', 'senthil'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        "/firstPage" : (context) => FirstPage(),
        "/secondPage" : (context) => SecondPage(),
        "/homePage": (context) => Home(),
        "/settingsPage": (context) => Settings(),
        "/profile" : (context)=> Profile()

      },
      );
  }
}
