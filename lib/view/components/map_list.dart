import 'package:flutter/material.dart';

class MapList extends StatelessWidget {
  final Color color;
  final String address;
  final String farmName;
  final double height;

  MapList(
      {required this.color,
      required this.address,
      required this.farmName,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("住所",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    decoration: TextDecoration.none)),
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(farmName,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: color,
        border: const Border(
          bottom: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
      ),
    );
  }
}
