import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:motoveys/Screens/LoginPage.dart';
import 'package:motoveys/Screens/claimsDashboard.dart';
import 'package:motoveys/Screens/loginScreen.dart';
import 'package:motoveys/customProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final appState = Provider.of<AppState>(context, listen: false);
    appState.createToken();
    Timer.periodic(const Duration(seconds: 240), (timer) async {
      await appState.createToken();
    });
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 251, 251)),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// this is color of background for there
// const Color.fromARGB(255, 206, 201, 201))