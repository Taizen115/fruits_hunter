import 'package:flutter/material.dart';
import 'package:fruits_hunter/screens/page/detail_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fruits_hunter/style/style.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
          elevation: 12.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.white70,
                  title: Center(
                      child: Text(
                    "果物一覧",
                    style: TextStyle(
                        fontFamily: MainFont, fontSize: 25.0,),
                  ),
                  ),
              ),
              body: Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: InkWell(
                  onTap: () => _goDetailPage(context),
                  child: SingleChildScrollView(
                      child: StaggeredGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    children: [

                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [Image.asset("assets/images/apple.jpg",
                              fit: BoxFit.contain),
                            Positioned(
                                bottom: 2.0,
                                right: 8.0,
                                left: 8.0,
                                child: Center(child: Text("りんご", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                            ),
                            ]
                        ),
                      ),


                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/blueberry.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("ブルーベリー", style: TextStyle(fontFamily: MainFont, fontSize: 20.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),

                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/cherry.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("さくらんぼ", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),


                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/chestnut.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("くり", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),


                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/grape.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("ぶどう", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),


                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/kiwi_fruits.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("キウイフルーツ", style: TextStyle(fontFamily: MainFont, fontSize: 20.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),

                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/mandarin_orange.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("みかん", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),

                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/melon.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("メロン", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),


                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/peach.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("もも", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),

                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/pear.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("なし", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),



                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/persimmon.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("かき", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),


                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/plum.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("すもも", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),


                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/strawberry.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("いちご", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),

                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Stack(
                            fit: StackFit.expand,
                            children: [Image.asset("assets/images/water_melon.jpg",
                                fit: BoxFit.contain),
                              Positioned(
                                  bottom: 2.0,
                                  right: 8.0,
                                  left: 8.0,
                                  child: Center(child: Text("すいか", style: TextStyle(fontFamily: MainFont, fontSize: 25.0, color: Colors.lightGreen),))
                              ),
                            ]
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ),
          )),
    );
  }

  _goDetailPage(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => DetailPage()));
  }
}
