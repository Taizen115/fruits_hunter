import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_hunter/view/screens/pages/list_page.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../style/style.dart';

class LinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecoratedBox(
            position: DecorationPosition.foreground,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white70, Colors.white12]),
            ),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background/fruits_line.png"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              centerTitle: true,
              leading: TextButton(
                child: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white70,),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(
                "リンク集",
                style: TextStyle(
                  fontFamily: MainFont,
                  fontSize: 25.0,
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [

                  Gap(20),

              TextButton(
                 child: Text("全国の果物狩り", style: TextStyle(fontSize:25.0, fontFamily: SubFont, color: Colors.teal),),
                onPressed: _launchURL1, ),

                  Gap(20),

                  TextButton(
                    child: Text("果物狩り体験談", style: TextStyle(fontSize:25.0, fontFamily: SubFont, color: Colors.indigo),),
                    onPressed: _launchURL2, ),

                  Gap(20),

                  TextButton(
                    child: Text("春の果物", style: TextStyle(fontSize:25.0, fontFamily: SubFont, color: Colors.pink[200]),),
                    onPressed: _launchURL3, ),

                  Gap(20),

                  TextButton(
                    child: Text("夏の果物", style: TextStyle(fontSize:25.0, fontFamily: SubFont, color: Colors.green),),
                    onPressed: _launchURL4, ),

                  Gap(20),

                  TextButton(
                    child: Text("秋の果物", style: TextStyle(fontSize:25.0, fontFamily: SubFont, color: Colors.brown),),
                    onPressed: _launchURL5, ),

                  Gap(20),

                  TextButton(
                    child: Text("冬の果物", style: TextStyle(fontSize:25.0, fontFamily: SubFont, color: Colors.orangeAccent),),
                    onPressed: _launchURL6 ),










              //     Gap(15),
              //
              //     InkWell(
              //       onTap: () => _goListPage(context),
              //       child:
              //
              //           //魅力1
              //           Container(
              //         child: Bubble(
              //           margin: BubbleEdges.only(top: 10),
              //           color: Colors.white70,
              //           child: Text(appeals["0"]!,
              //               style: TextStyle(
              //                 fontFamily: MainFont,
              //                 fontSize: 25.0,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //               textAlign: TextAlign.center),
              //         ),
              //       ).animate().fade(duration: 1000.ms).scale().then(delay: 3000.ms),
              //     ),
              //
              //     Gap(20),
              //
              //     //魅力2
              //     Container(
              //       child: Bubble(
              //         margin: BubbleEdges.only(top: 10),
              //         color: Colors.white70,
              //         child: Text(appeals["1"]!,
              //             style: TextStyle(
              //               fontFamily: MainFont,
              //               fontSize: 25.0,
              //               fontWeight: FontWeight.bold,
              //             ),
              //             textAlign: TextAlign.center),
              //       ),
              //     ).animate().fade(duration: 2000.ms).scale().then(delay: 5000.ms),
              //
              // Gap(20),
              //
              // //魅力3
              // Container(
              //   child: Bubble(
              //     margin: BubbleEdges.only(top: 10),
              //     color: Colors.white70,
              //     child: Text(appeals["2"]!,
              //         style: TextStyle(
              //           fontFamily: MainFont,
              //           fontSize: 25.0,
              //           fontWeight: FontWeight.bold,
              //         ),
              //         textAlign: TextAlign.center),
              //   ),
              // ).animate().fade(duration: 3000.ms).scale().then(delay: 7000.ms),
              //
              //     Gap(20),
              //
              //     //魅力4
              //     Container(
              //       child: Bubble(
              //         margin: BubbleEdges.only(top: 10),
              //         color: Colors.white70,
              //         child: Text(appeals["3"]!,
              //             style: TextStyle(
              //               fontFamily: MainFont,
              //               fontSize: 25.0,
              //               fontWeight: FontWeight.bold,
              //             ),
              //             textAlign: TextAlign.center),
              //       ),
              //     ).animate().fade(duration: 4000.ms).scale().then(delay: 9000.ms),
              //     Gap(20),
              //
              //     //魅力5
              //     Container(
              //       child: Bubble(
              //         margin: BubbleEdges.only(top: 10),
              //         color: Colors.white70,
              //         child: Text(appeals["4"]!,
              //             style: TextStyle(
              //               fontFamily: MainFont,
              //               fontSize: 25.0,
              //               fontWeight: FontWeight.bold,
              //             ),
              //             textAlign: TextAlign.center),
              //       ),
              //     ).animate().fade(duration: 5000.ms).scale().then(delay: 11000.ms),
              //
              //     Gap(20),
              //
              //     //魅力6
              //     Container(
              //       child: Bubble(
              //         margin: BubbleEdges.only(top: 10),
              //         color: Colors.white70,
              //         child: Text(appeals["5"]!,
              //             style: TextStyle(
              //               fontFamily: MainFont,
              //               fontSize: 25.0,
              //               fontWeight: FontWeight.bold,
              //             ),
              //             textAlign: TextAlign.center),
              //       ),
              //     ).animate().fade(duration: 6000.ms).scale().then(delay: 13000.ms),
              //
              //     Gap(20),
              //
              //     //魅力7
              //     Container(
              //       child: Bubble(
              //         margin: BubbleEdges.only(top: 10),
              //         color: Colors.white70,
              //         child: Text(appeals["6"]!,
              //             style: TextStyle(
              //               fontFamily: MainFont,
              //               fontSize: 25.0,
              //               fontWeight: FontWeight.bold,
              //             ),
              //             textAlign: TextAlign.center),
              //       ),
              //     ).animate().fade(duration: 7000.ms).scale().then(delay: 15000.ms),
              //
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  _goListPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ListPage()));
  }

  void _launchURL1() async {
    const url = 'https://www.jalan.net/theme/mikakugari/';
    final uri = Uri.parse(url);
    if (await launchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchURL2() async {
    const url = 'https://www.veltra.com/jp/japan/ctg/168763:%E3%83%95%E3%83%AB%E3%83%BC%E3%83%84%E7%8B%A9%E3%82%8A/reviews/';
    final uri = Uri.parse(url);
    if (await launchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchURL3() async {
    const url = 'https://tabiiro.jp/theme/spring_fruit/';
    final uri = Uri.parse(url);
    if (await launchUrl(uri)) {
    await launchUrl(uri);
    } else {
    throw 'Could not launch $url';
    }
  }

  void _launchURL4() async {
  const url = 'https://ikedanaoya.com/knowledge-in-various-matters/%e5%a4%8f%e3%81%ae%e6%9e%9c%e7%89%a9%e3%81%a3%e3%81%a6%e4%bd%95%e3%81%8c%e3%81%82%e3%82%8b%ef%bc%9f%e6%97%ac%e3%81%aa%e6%99%82%e6%9c%9f%e3%82%84%e3%81%8a%e3%81%99%e3%81%99%e3%82%81%e3%81%ae%e9%a3%9f/#:~:text=%E6%97%AC%E3%81%AA%E6%99%82%E6%9C%9F%E3%82%84%E3%81%8A%E3%81%99%E3%81%99%E3%82%81%E3%81%AE%E9%A3%9F%E3%81%B9%E6%96%B9%E3%80%81%E3%83%95%E3%83%AB%E3%83%BC%E3%83%84%E7%8B%A9%E3%82%8A%E3%81%8C%E3%81%A7%E3%81%8D%E3%82%8B%E3%82%82%E3%81%AE%E3%81%AF%EF%BC%9F%201%20%E5%A4%8F%E3%81%AE%E6%9E%9C%E7%89%A9%E3%81%A8%E3%81%84%E3%81%88%E3%81%B0%E3%83%9E%E3%83%B3%E3%82%B4%E3%83%BC%EF%BC%81%202%20%E5%A4%8F%E3%81%AE%E6%9E%9C%E7%89%A9%E3%81%A8%E3%81%84%E3%81%88%E3%81%B0%E6%A2%85%EF%BC%81%203%20%E5%A4%8F%E3%81%AE%E6%9E%9C%E7%89%A9%E3%81%A8%E3%81%84%E3%81%88%E3%81%B0%E3%83%97%E3%83%A9%E3%83%A0%EF%BC%81,4%20%E5%A4%8F%E3%81%AE%E6%9E%9C%E7%89%A9%E3%81%A8%E3%81%84%E3%81%88%E3%81%B0%E3%82%B9%E3%82%A4%E3%82%AB%EF%BC%81%205%20%E5%A4%8F%E3%81%AE%E6%9E%9C%E7%89%A9%E3%81%A8%E3%81%84%E3%81%88%E3%81%B0%E3%83%91%E3%83%91%E3%82%A4%E3%83%A4%EF%BC%81%206%20%E5%A4%8F%E3%81%AE%E6%9E%9C%E7%89%A9%E3%81%A8%E3%81%84%E3%81%88%E3%81%B0%E3%83%9E%E3%83%B3%E3%82%B4%E3%82%B9%E3%83%81%E3%83%B3%EF%BC%81%207%20%E5%A4%8F%E3%81%AE%E6%9E%9C%E7%89%A9%E3%81%A8%E3%81%84%E3%81%88%E3%81%B0%E3%83%96%E3%83%AB%E3%83%BC%E3%83%99%E3%83%AA%E3%83%BC%EF%BC%81';
  final uri = Uri.parse(url);
  if (await launchUrl(uri)) {
  await launchUrl(uri);
  } else {
  throw 'Could not launch $url';
  }
}

  void _launchURL5() async {
    const url = 'https://rurubu.jp/andmore/article/4119';
    final uri = Uri.parse(url);
    if (await launchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchURL6() async {
    const url = 'https://horti.jp/24763';
    final uri = Uri.parse(url);
    if (await launchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
