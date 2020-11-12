import 'package:fad_quizapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:fad_quizapp/Screens/Welcome/welcome_screen.dart';

import 'Screens/Login/login_screen.dart';
import 'Screens/completed_screen/level_completed_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FAD Quiz',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LevelCompletedScreen(),
    );
  }
}
