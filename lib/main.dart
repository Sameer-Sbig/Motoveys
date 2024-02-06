import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:motoveys/Screens/LoginPage.dart';
import 'package:motoveys/Screens/claimsDashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 251, 251)),
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

// this is color of background for there
// const Color.fromARGB(255, 206, 201, 201))