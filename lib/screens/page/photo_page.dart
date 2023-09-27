import 'package:flutter/material.dart';
import 'package:fruits_hunter/screens/page/detail_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fruits_hunter/style/style.dart';

class PhotoPage extends StatelessWidget {
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
                        fontFamily: MainFont),
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
                        child: Image.asset("assets/images/apple.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: Image.asset("assets/images/blueberry.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Image.asset("assets/images/cherry.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Image.asset("assets/images/chestnut.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 4,
                        mainAxisCellCount: 2,
                        child: Image.asset("assets/images/grape.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Image.asset("assets/images/kiwi_fruits.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: Image.asset("assets/images/mandarin_orange.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Image.asset("assets/images/melon.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Image.asset("assets/images/peach.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 4,
                        mainAxisCellCount: 2,
                        child: Image.asset("assets/images/pear.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Image.asset("assets/images/persimmon.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: Image.asset("assets/images/plum.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Image.asset("assets/images/strawberry.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Image.asset("assets/images/water_melon.jpg",
                            fit: BoxFit.fitWidth),
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
    Navigator.pop(
        context, MaterialPageRoute(builder: (context) => DetailPage()));
  }
}
