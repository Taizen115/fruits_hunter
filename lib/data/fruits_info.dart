import 'package:flutter/material.dart';

class Fruit {
 final int fruitId;
 final Image image;

 Fruit({required this.fruitId, required this.image,});
}

final List<Fruit> fruits = [
  Fruit(fruitId:1, image: Image.asset("assets/images/apple.jpg")),
  Fruit(fruitId:2, image: Image.asset("assets/images/blueberry.jpg")),
  Fruit(fruitId:3, image: Image.asset("assets/images/cherry.jpg")),
  Fruit(fruitId:4, image: Image.asset("assets/images/chestnut.jpg")),
  Fruit(fruitId:5, image: Image.asset("assets/images/grape.jpg")),
  Fruit(fruitId:6, image: Image.asset("assets/images/kiwi_fruits.jpg")),
  Fruit(fruitId:7, image: Image.asset("assets/images/mandarin_orange.jpg")),
  Fruit(fruitId:8, image: Image.asset("assets/images/melon.jpg")),
  Fruit(fruitId:9, image: Image.asset("assets/images/peach.jpg")),
  Fruit(fruitId:10, image: Image.asset("assets/images/pear.jpg")),
  Fruit(fruitId:11, image: Image.asset("assets/images/persimmon.jpg")),
  Fruit(fruitId:12, image: Image.asset("assets/images/plum.jpg")),
  Fruit(fruitId:13, image: Image.asset("assets/images/strawberry.jpg")),
  Fruit(fruitId:14, image: Image.asset("assets/images/water_melon.jpg")),
];