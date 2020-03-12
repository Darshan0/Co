import 'package:co/bottom_navigation_screen.dart';
import 'package:co/homepage_screen.dart';
import 'package:co/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.transparent,
        primarySwatch: Colors.blueGrey,
      ),
      home: AppSplashScreen(),
    );
  }
}


