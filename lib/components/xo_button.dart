import 'package:flutter/material.dart';

class XoButtonButton extends StatelessWidget {
  String symbol;
  Function onClick;
  int index;

  XoButtonButton(
      {required this.symbol, required this.onClick, required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.all(2),
            child: ElevatedButton(
                onPressed: () {
                  onClick(index);
                },
                child: Text(
                  "$symbol",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
            )
        )
    );
  }
}
