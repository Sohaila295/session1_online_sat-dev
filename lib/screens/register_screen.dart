import 'package:flutter/material.dart';
import 'package:session1_online_sat/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName ="Register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register"),),
      body: Center(child: ElevatedButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text("Back to login"))),
    );
  }
}
