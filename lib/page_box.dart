import 'package:flutter/material.dart';

import 'main.dart';

class PageBox extends StatelessWidget {

  PageBoxData item;
  PageBox({required this.item});
  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
              color: Colors.black,
              child: Image.asset(item.imagePath,height: double.infinity, fit: BoxFit.fill,)),
          Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 4),
              color: Color.fromRGBO(133, 44, 186, .5),
              child: Text(
                item.title,
                style: const TextStyle(
                    color: Colors.white, fontSize: 20),
              ))
        ],
      );
  }
}

