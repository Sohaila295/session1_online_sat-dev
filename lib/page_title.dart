import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
 String title;
  PageTitle({required this.title});


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          color: const Color.fromRGBO(133, 44, 186, 1.0),
          child: Text(
              title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 24),
          )),
    );
  }

}