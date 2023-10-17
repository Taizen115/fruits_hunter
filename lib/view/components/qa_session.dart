import 'package:flutter/material.dart';

import '../../db/database.dart';
import '../../style/style.dart';

class QaSession extends StatelessWidget {
  final Fruit selectedFruit;

  const QaSession({required this.selectedFruit});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 12.0,
        child: Column(
          children: [
            Stack(children: [
              Image.asset("assets/images/questioner.jpg"),
              Positioned(
                  top: 35.0,
                  right: 8.0,
                  left: 20.0,
                  child: Text(
                    "${selectedFruit.name}の主要な産地は？",
                    style: TextStyle(fontFamily: MainFont, fontSize: 12.0),
                  )),
            ]),
            Stack(children: [
              Image.asset("assets/images/answerer.jpg"),
              Positioned(
                  top: 30.0,
                  right: 8.0,
                  left: 130.0,
                  child: Text(
                    "${selectedFruit.famousArea}です.",
                    style: TextStyle(fontFamily: MainFont, fontSize: 12.0),
                  )),
            ]),
            SizedBox(
              height: 10.0,
            ),
            Stack(children: [
              Image.asset("assets/images/questioner.jpg"),
              Positioned(
                  top: 35.0,
                  right: 8.0,
                  left: 20.0,
                  child: Text(
                    "${selectedFruit.name}の旬の時期は？",
                    style: TextStyle(fontFamily: MainFont, fontSize: 12.0),
                  )),
            ]),
            Stack(children: [
              Image.asset("assets/images/answerer.jpg"),
              Positioned(
                  top: 30.0,
                  right: 8.0,
                  left: 130.0,
                  child: Text(
                    "${selectedFruit.season}です.",
                    style: TextStyle(fontFamily: MainFont, fontSize: 12.0),
                  )),
            ]),
            SizedBox(
              height: 10.0,
            ),
            Stack(children: [
              Image.asset("assets/images/questioner.jpg"),
              Positioned(
                  top: 35.0,
                  right: 8.0,
                  left: 20.0,
                  child: Text(
                    "${selectedFruit.name}の有名な品種は？",
                    style: TextStyle(fontFamily: MainFont, fontSize: 12.0),
                  )),
            ]),
            Stack(children: [
              Image.asset("assets/images/answerer.jpg"),
              Positioned(
                  top: 22.0,
                  right: 8.0,
                  left: 130.0,
                  child: Text(
                    "${selectedFruit.famousBreed}です.",
                    style: TextStyle(fontFamily: MainFont, fontSize: 12.0),
                  )),
            ]),
            SizedBox(
              height: 10.0,
            ),
            Stack(children: [
              Image.asset("assets/images/questioner.jpg"),
              Positioned(
                  top: 35.0,
                  right: 8.0,
                  left: 20.0,
                  child: Text(
                    "${selectedFruit.name}の主要な栄養素は？",
                    style: TextStyle(fontFamily: MainFont, fontSize: 12.0),
                  )),
            ]),
            Stack(children: [
              Image.asset("assets/images/answerer.jpg"),
              Positioned(
                  top: 22.0,
                  right: 8.0,
                  left: 130.0,
                  child: Text(
                    "${selectedFruit.nutrients}です.",
                    style: TextStyle(fontFamily: MainFont, fontSize: 12.0),
                  )),
            ]),
            SizedBox(
              height: 10.0,
            ),
            Stack(children: [
              Image.asset("assets/images/questioner.jpg"),
              Positioned(
                  top: 35.0,
                  right: 8.0,
                  left: 20.0,
                  child: Text(
                    "${selectedFruit.name}狩りの価格帯は？",
                    style: TextStyle(fontFamily: MainFont, fontSize: 12.0),
                  )),
            ]),
            Stack(children: [
              Image.asset("assets/images/answerer.jpg"),
              Positioned(
                  top: 30.0,
                  right: 8.0,
                  left: 130.0,
                  child: Text(
                    "${selectedFruit.priceRange}です.",
                    style: TextStyle(fontFamily: MainFont, fontSize: 12.0),
                  )),
            ]),
          ],
        ));
  }
}
