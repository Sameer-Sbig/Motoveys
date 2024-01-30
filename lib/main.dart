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
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}
