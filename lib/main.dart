import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Dashboard.dart';
import 'package:flutter_application_1/Screens/LoginScreen.dart';
import 'package:flutter_application_1/Screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
