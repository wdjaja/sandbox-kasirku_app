import 'package:flutter/material.dart';

import 'package:kasirku_app/pages/login.dart';
import 'package:kasirku_app/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: AppThemes.light,

      home: LoginPage(),
    );
  }
}
