import 'package:flutter/material.dart';
import 'package:session1_online_sat/screens/calculator_screen.dart';
import 'package:session1_online_sat/screens/game_board_screen.dart';
import 'package:session1_online_sat/screens/home_screen.dart';
import 'package:session1_online_sat/screens/intro_screen.dart';
import 'package:session1_online_sat/screens/login_screen.dart';
import 'package:session1_online_sat/screens/register_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "This my first app",
    routes: {
      HomeScreen.routeName: (_) => HomeScreen(),
      LoginScreen.routeName: (_) => LoginScreen(),
      RegisterScreen.routeName: (_) => RegisterScreen(),
      CalculatorScreen.routeName: (_) => CalculatorScreen(),
      GameBoardScreen.routeName: (_) =>GameBoardScreen(),
      IntroScreen.routeName: (_) => IntroScreen()
    },
    initialRoute: IntroScreen.routeName,
  ));
}

class PageBoxData {
  String imagePath;
  String title;

  PageBoxData({required this.imagePath, required this.title});
}
