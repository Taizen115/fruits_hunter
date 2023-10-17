import 'package:flutter/material.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:fruits_hunter/view/components/qa_session.dart';

import '../../../db/database.dart';

class DetailPage extends StatelessWidget {
  final Fruit selectedFruit;

  DetailPage({required this.selectedFruit});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text(
              "質問コーナー",
              style: TextStyle(fontFamily: SubFont, fontSize: 20.0),
            ),
            centerTitle: true,
          ),

          body: SingleChildScrollView(
              child:
              QaSession(selectedFruit: selectedFruit),
          )
      ),
    );
  }
}





  //               Stack(children: [
  //                 Image.asset("assets/images/questioner.jpg"),
  //                 Positioned(
  //                     top: 35.0,
  //                     right: 8.0,
  //                     left: 20.0,
  //                     child: Text(
  //                       "${selectedFruit.name}の主要な産地は？",
  //                       style: TextStyle(fontFamily: SubFont, fontSize: 15.0),
  //                     )),
  //               ]),
  //               Stack(children: [
  //                 Image.asset("assets/images/answerer.jpg"),
  //                 Positioned(
  //                     top: 30.0,
  //                     right: 8.0,
  //                     left: 130.0,
  //                     child: Text(
  //                       "${selectedFruit.famousArea}です.",
  //                       style: TextStyle(fontFamily: SubFont, fontSize: 15.0),
  //                     )),
  //               ]),
  //               Stack(children: [
  //                 Image.asset("assets/images/questioner.jpg"),
  //                 Positioned(
  //                     top: 35.0,
  //                     right: 8.0,
  //                     left: 20.0,
  //                     child: Text(
  //                       "${selectedFruit.name}の旬の時期は？",
  //                       style: TextStyle(fontFamily: SubFont, fontSize: 15.0),
  //                     )),
  //               ]),
  //               Stack(children: [
  //                 Image.asset("assets/images/answerer.jpg"),
  //                 Positioned(
  //                     top: 30.0,
  //                     right: 8.0,
  //                     left: 130.0,
  //                     child: Text(
  //                       "${selectedFruit.season}です.",
  //                       style: TextStyle(fontFamily: SubFont, fontSize: 15.0),
  //                     )),
  //               ]),
  //               Stack(children: [
  //                 Image.asset("assets/images/questioner.jpg"),
  //                 Positioned(
  //                     top: 35.0,
  //                     right: 8.0,
  //                     left: 20.0,
  //                     child: Text(
  //                       "${selectedFruit.name}の有名な品種は？",
  //                       style: TextStyle(fontFamily: SubFont, fontSize: 15.0),
  //                     )),
  //               ]),
  //               Stack(children: [
  //                 Image.asset("assets/images/answerer.jpg"),
  //                 Positioned(
  //                     top: 30.0,
  //                     right: 8.0,
  //                     left: 130.0,
  //                     child: Text(
  //                       "${selectedFruit.famousBreed}です.",
  //                       style: TextStyle(fontFamily: SubFont, fontSize: 15.0),
  //                     )),
  //               ]),
  //               Stack(children: [
  //                 Image.asset("assets/images/questioner.jpg"),
  //                 Positioned(
  //                     top: 35.0,
  //                     right: 8.0,
  //                     left: 20.0,
  //                     child: Text(
  //                       "${selectedFruit.name}の主要な栄養素は？",
  //                       style: TextStyle(fontFamily: SubFont, fontSize: 15.0),
  //                     )),
  //               ]),
  //               Stack(children: [
  //                 Image.asset("assets/images/answerer.jpg"),
  //                 Positioned(
  //                     top: 25.0,
  //                     right: 8.0,
  //                     left: 130.0,
  //                     child: Text(
  //                       "${selectedFruit.nutrients}です.",
  //                       style: TextStyle(fontFamily: SubFont, fontSize: 12.0),
  //                     )),
  //               ]),
  //               Stack(children: [
  //                 Image.asset("assets/images/questioner.jpg"),
  //                 Positioned(
  //                     top: 35.0,
  //                     right: 8.0,
  //                     left: 20.0,
  //                     child: Text(
  //                       "${selectedFruit.name}狩りの価格帯は？",
  //                       style: TextStyle(fontFamily: SubFont, fontSize: 15.0),
  //                     )),
  //               ]),
  //               Stack(children: [
  //                 Image.asset("assets/images/answerer.jpg"),
  //                 Positioned(
  //                     top: 30.0,
  //                     right: 8.0,
  //                     left: 130.0,
  //                     child: Text(
  //                       "${selectedFruit.priceRange}です.",
  //                       style: TextStyle(fontFamily: SubFont, fontSize: 15.0),
  //                     )),
  //               ]),
  //             ],
  //           ),
  //         ),
  //       )
  //   );
//   }
// }
