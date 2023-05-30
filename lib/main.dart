import 'package:flutter/material.dart';
import 'package:memory/login_page.dart';
import 'package:memory/updatePage.dart';
import 'package:memory/widgets/additionPage.dart';
import 'package:memory/signup_page.dart';
import 'package:memory/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}