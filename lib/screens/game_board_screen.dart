import 'package:flutter/material.dart';
import 'package:session1_online_sat/components/xo_button.dart';
import 'package:session1_online_sat/screens/intro_screen.dart';

class GameBoardScreen extends StatefulWidget {
  static String routeName = "game board";

  @override
  State<StatefulWidget> createState() {
    return GameBoardScreenState();
  }
}

class GameBoardScreenState extends State<GameBoardScreen> {
  List<String> boardState = ["", "", "", "", "", "", "", "", ""];
  int player1Score = 0;
  int player2Score = 0;

  @override
  Widget build(BuildContext context) {
    GameBoardArguments args = ModalRoute.of(context)!.settings.arguments as GameBoardArguments ;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "${args.p1}: $player1Score",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "${args.p2}: $player2Score",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButtonButton(
                  symbol: boardState[0],
                  onClick: onButtonClick,
                  index: 0,
                ),
                XoButtonButton(
                  symbol: boardState[1],
                  onClick: onButtonClick,
                  index: 1,
                ),
                XoButtonButton(
                  symbol: boardState[2],
                  onClick: onButtonClick,
                  index: 2,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButtonButton(
                  symbol: boardState[3],
                  onClick: onButtonClick,
                  index: 3,
                ),
                XoButtonButton(
                  symbol: boardState[4],
                  onClick: onButtonClick,
                  index: 4,
                ),
                XoButtonButton(
                  symbol: boardState[5],
                  onClick: onButtonClick,
                  index: 5,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButtonButton(
                  symbol: boardState[6],
                  onClick: onButtonClick,
                  index: 6,
                ),
                XoButtonButton(
                  symbol: boardState[7],
                  onClick: onButtonClick,
                  index: 7,
                ),
                XoButtonButton(
                  symbol: boardState[8],
                  onClick: onButtonClick,
                  index: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int counter = 0;

  void onButtonClick(int index) {
    if (boardState[index].isNotEmpty) return;
    String symbol = counter % 2 == 0 ? "o" : "x";

    setState(() {
      boardState[index] = symbol;
    });

    ///player 1 or 2 wins
    if (checkWinner(symbol)) {
      if (symbol == "o") {
        player1Score++;
      } else {
        player2Score++;
      }
      counter = 0;
      boardState = ["", "", "", "", "", "", "", "", ""];
      setState(() {});
      return;
    }
    ///draw
    if (counter == 8) {
      boardState = ["", "", "", "", "", "", "", "", ""];
      counter = 0;
      setState(() {});
      return;
    }
    counter++;
  }

  bool checkWinner(String symbol) {
    if (boardState[0] == symbol &&
        boardState[4] == symbol &&
        boardState[8] == symbol) {
      return true;
    }
    if (boardState[2] == symbol &&
        boardState[4] == symbol &&
        boardState[6] == symbol) {
      return true;
    }
    for (int i = 0; i < 3; i++) {
      if (boardState[i] == symbol &&
          boardState[i + 3] == symbol &&
          boardState[i + 6] == symbol) {
        return true;
      }
    }
    for (int i = 0; i < 9; i += 3) {
      if (boardState[i] == symbol &&
          boardState[i + 1] == symbol &&
          boardState[i + 2] == symbol) {
        return true;
      }
    }
    return false;
  }
}
