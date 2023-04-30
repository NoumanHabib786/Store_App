import 'package:e_commerce_cloth_app/Screens/login_screen.dart';
import 'package:e_commerce_cloth_app/utilities/app_color.dart';
import 'package:flutter/material.dart';

import 'Screens/sign_in_screen.dart';
import 'Screens/start_page.dart';

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
      title: 'Cloth App',
      theme: ThemeData(
        primarySwatch: primary,
      ),
      home: StartPage(),
    );
  }
}

