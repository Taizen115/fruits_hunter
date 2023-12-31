import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              foregroundColor: Colors.lightBlue,
              centerTitle: true,
              leading: TextButton(
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.lightBlue,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(
                "リンク集",
                style: TextStyle(
                  fontFamily: ThirdFont,
                  fontSize: 30.0,
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(10),
                  TextButton(
                    child: Text(
                      "全国の果物狩り \n ( じゃらんnet ) ",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: SubFont,
                        color: Colors.indigo,
                      ),
                    ),
                    onPressed: _launchURL1,
                  ),
                  Gap(20),
                  TextButton(
                    child: Text(
                      "果物狩り体験談 \n ( VELTRA ) ",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: SubFont,
                          color: Colors.indigoAccent),
                    ),
                    onPressed: _launchURL2,
                  ),
                  Gap(20),
                  TextButton(
                    child: Text(
                      "春の果物 ( 旅色 ) ",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: SubFont,
                          color: Colors.blue),
                    ),
                    onPressed: _launchURL3,
                  ),
                  Gap(20),
                  TextButton(
                    child: Text(
                      "夏の果物 ( まっぷる ) ",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: SubFont,
                          color: Colors.blue[400]),
                    ),
                    onPressed: _launchURL4,
                  ),
                  Gap(20),
                  TextButton(
                    child: Text(
                      "秋の果物 ( るるぶ ) ",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: SubFont,
                          color: Colors.blue[300]),
                    ),
                    onPressed: _launchURL5,
                  ),
                  Gap(20),
                  TextButton(
                      child: Text(
                        "冬の果物 ( HORTI ) ",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: SubFont,
                            color: Colors.blue[200]),
                      ),
                      onPressed: _launchURL6),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _launchURL1() async {
    const url = 'https://www.jalan.net/theme/mikakugari/';
    final uri = Uri.parse(url);
    if (!(await launchUrl(uri))) {
      throw 'Could not launch $url';
    }
  }

  void _launchURL2() async {
    const url =
        'https://www.veltra.com/jp/japan/ctg/168763:%E3%83%95%E3%83%AB%E3%83%BC%E3%83%84%E7%8B%A9%E3%82%8A/reviews/';
    final uri = Uri.parse(url);
    if (!(await launchUrl(uri))) {
      throw 'Could not launch $url';
    }
  }

  void _launchURL3() async {
    const url = 'https://tabiiro.jp/theme/spring_fruit/';
    final uri = Uri.parse(url);
    if (!(await launchUrl(uri))) {
      throw 'Could not launch $url';
    }
  }

  void _launchURL4() async {
    const url = 'https://www.mapple.net/s_article/summer_fruits';
    final uri = Uri.parse(url);
    if (!(await launchUrl(uri))) {
      throw 'Could not launch $url';
    }
  }

  void _launchURL5() async {
    const url = 'https://rurubu.jp/andmore/article/4119';
    final uri = Uri.parse(url);
    if (!(await launchUrl(uri))) {
      throw 'Could not launch $url';
    }
  }

  void _launchURL6() async {
    const url = 'https://horti.jp/24763';
    final uri = Uri.parse(url);
    if (!(await launchUrl(uri))) {
      throw 'Could not launch $url';
    }
  }
}
