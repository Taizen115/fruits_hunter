import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:fruits_hunter/view/components/map_list.dart';
import 'package:gap/gap.dart';
import 'package:map_launcher/map_launcher.dart';
import '../../../db/database.dart';
import 'package:geocoding/geocoding.dart' as geocoding;




class DetailPage extends StatefulWidget {
  final Fruit selectedFruit;

  DetailPage({required this.selectedFruit});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Record? record;


  @override
  Widget build(BuildContext context) {
    // final Map<String, String> detailItems = {
    //   "0": "1.他のアウトドアにはない果物狩りの魅力は?",
    //   "1": "2.果物の主要な産地は?",
    //   "2": "3.果物の旬の時期は？",
    //   "3": "4.果物の主要な品種は？",
    //   "4": "5.果物の種のない品種は? ",
    //   "5": "6.果物の含まれている主要な栄養素は？",
    //   "6": "7.その栄養素の効能は？",
    //   "7": "8.果物狩りの費用は？",
    //   "8": "9.美味しい果物の見分け方は？",
    // };

    final Map<String, String> detailQuestions = {
      "0": "1.他のアウトドアにはない果物狩りの魅力は何ですか？",
      "1": "2.${widget.selectedFruit.name}の主要な産地はどこですか？",
      "2": "3.${widget.selectedFruit.name}の旬の時期はいつですか？",
      "3": "4.${widget.selectedFruit.name}の有名な品種は何ですか？",
      "4": "4-2.${widget.selectedFruit.name}の種のない品種はどれですか？",
      "5": "5.${widget.selectedFruit.name}には, どんな栄養素が含まれますか？",
      "6": "5-2.${widget.selectedFruit.name}の栄養素には, どんな効能がありますか？",
      "7": "6.${widget.selectedFruit.name}の収穫体験は, 大体どのぐらいかかりますか？",
      "8": "7.美味しい${widget.selectedFruit.name}の見分け方は？",
    };

    final Map<String, String> detailAnswers = {
      "0": "とれたての果物をその場でたべられるのが, 一番の魅力でございます. "
          "農園によって, 様々な品種をお楽しみ頂けます.お持ち帰りできる農園もあるので,"
          " 家に帰って新鮮な果物を楽しめます."
          "旅行中のイベントとして, その土地自慢の果物狩りをお楽しみ頂けます.",
      "1": "${widget.selectedFruit.famousArea}, 等が生産量の多い産地とされております.",
      "2": "大体${widget.selectedFruit.season}の時期に, 果樹園が営業しております.",
      "3": "${widget.selectedFruit.famousBreed}, 等が有名な品種とされております.",
      "4": "${widget.selectedFruit.seedlessVarieties}",
      "5": "栄養素は, ${widget.selectedFruit.nutrients}が含まれております.",
      "6": "${widget.selectedFruit.nutrientEfficacy}",
      "7": "場所と時期によりますが, 大体${widget.selectedFruit.priceRange}の費用がかかります.",
      "8": "${widget.selectedFruit.distinguish}",
    };

    return SafeArea(
      child: DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black12, Colors.white60]),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/background/${widget.selectedFruit.backgroundImage}"),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
              centerTitle: true,
              leading: TextButton(
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title:Row(
                children:[
                  ClipOval(child: Image.asset("assets/images/${widget.selectedFruit.imageFileName}", width: 50.0, height: 50.0,)),

                  Gap(30),

                  Text("${widget.selectedFruit.name}の詳細")
                ]
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: MapList(
                        color: Color(0xff4169e1),
                        farmName: record?.address??"map",
                        height: 100,
                          address:"住所"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.blue,
                        child: TextButton(
                          onPressed: () => _goMapPage(context),
                          child: Text("・果物狩りへ　\n ( Google map )",
                              style: TextStyle(
                                  fontFamily: MainFont,
                                  fontSize: 20.0,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        color: Colors.white70,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: detailQuestions.length,
                          itemBuilder: (context, index) {
                            return ExpansionTile(
                              backgroundColor: Colors.blue[600],
                              title: Text(
                                detailQuestions[index.toString()]!,
                                style: TextStyle(
                                  fontFamily: SubFont,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.left,
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    detailAnswers[index.toString()]!,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            );
                          },
                        ).animate(delay: 200.ms).fadeIn(delay: 200.ms),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _goMapPage(BuildContext context) async {
    if (record == null) return;
    //geocoding: 住所から緯度経度持ってこれるか？
    final locations = await geocoding.locationFromAddress(
      record!.address,
    );
    if (locations.isEmpty) return;
    final selectedLocation = locations.first;

    final availableMaps = await MapLauncher.installedMaps;
    if (availableMaps.isEmpty) return;


    //１．マーカーの表示
    await availableMaps.first.showMarker(
      coords: Coords(
        selectedLocation.latitude,
        selectedLocation.longitude,
      ),
      title: record!.farmName,
    );
  }

}
