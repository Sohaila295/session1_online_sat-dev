import 'package:flutter/material.dart';
import 'package:session1_online_sat/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static String routeName ="Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            }, child: Text("Log in")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "Register");
            }, child: Text("Sign up")),
            TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle()
              ),
            )
          ],
        ),
      ),
    );
  }
}
