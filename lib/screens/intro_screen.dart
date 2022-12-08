import 'package:flutter/material.dart';
import 'package:session1_online_sat/screens/game_board_screen.dart';
///Repo: where we place our code
/// local Repo: repo exists on my machine
/// Remote: repo exists on the server
/// branch: a copy from my code
/// commit: changes in some files in certain branch =
/// commitMessage: Describtion
/// Merge: is taking commits from branch to add it in another branch
/// pull: is pulling latest changes in remote repo to my local repo
/// push: is push my local code to remote branch
/// fetch: refresh
/// PR, MR:
class IntroScreen extends StatelessWidget {
  static String routeName = "intro";

  String player1 = "";
  String player2 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Intro screen"),),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Player1"
            ),
            onChanged: (text){
              player1 = text;
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Player2"
            ),
            onChanged: (text) {
              player2 = text;
            },
          ),
          Spacer(),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, GameBoardScreen.routeName,
                arguments: [player1, player2]);
          }, child: Text("Start"))
        ],
      ),
    );
  }
}
class GameBoardArguments {
  String p1;
  String p2;
  GameBoardArguments(this.p1, this.p2);
}