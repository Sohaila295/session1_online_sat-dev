import 'package:flutter/material.dart';

import '../main.dart';
import '../page_box.dart';
import '../page_title.dart';

class HomeScreen extends StatelessWidget {
  static String routeName ="Home";
  List<PageBoxData> items = [
    PageBoxData(imagePath: "assets/car.jpg", title: "car"),
    PageBoxData(imagePath: "assets/sports.jpg", title: "sports"),
    PageBoxData(imagePath: "assets/car.jpg", title: "car"),
    PageBoxData(imagePath: "assets/sports.jpg", title: "sports"),
    PageBoxData(imagePath: "assets/car.jpg", title: "car"),
    PageBoxData(imagePath: "assets/sports.jpg", title: "sports")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                PageTitle(title: "news"),
                const SizedBox(
                  width: 4,
                ),
                PageTitle(title: "magazine")
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: items.length,
                itemBuilder: (context, index)
                =>PageBox(item: items[index]),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.4,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 4
                ),
              ),
            )

          ],
        ));
  }
}
