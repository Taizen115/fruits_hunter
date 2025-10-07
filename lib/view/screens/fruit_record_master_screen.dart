import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/style/style.dart';
import 'package:fruit_hunter/view/screens/home_screen.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../db/database.dart';
import '../../generated/l10n.dart';
import '../../main.dart';
import 'fruit_record_detail_screen.dart';
import 'package:path/path.dart' as p;

class FruitRecordMasterScreen extends StatefulWidget {
  @override
  State<FruitRecordMasterScreen> createState() =>
      _FruitRecordMasterScreenState();
}

class _FruitRecordMasterScreenState extends State<FruitRecordMasterScreen> {
  //広告
  @override
  void initState() {
    super.initState();
    _loadRecords();
    initAd();
  }

  //広告
  void initAd() {
    adManager.initBannerAd();
    adManager.loadBannerAd();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          child: FaIcon(FontAwesomeIcons.plus),
          onPressed: () =>
              _goFruitRecordDetailScreen(
                  recordToEdit: null, openMode: FruitRecordOpenMode.NEW),
        ),
        appBar: AppBar(
          leading: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.teal,
              ),
            ),
            onTap: () => _goHomeScreen(),
          ),
          title: Text(
            //記録一覧
            S
                .of(context)
                .recordList,
            style: TextStyle(color: Colors.teal, fontSize: 25.0),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Gap(10.0),

            Center(
              child: (adManager.bannerAd == null)
                  ? Container(
                width: 0.0,
                height: 0.0,
              )
                  : Container(
                width: adManager.bannerAd!.size.width.toDouble(),
                height: adManager.bannerAd!.size.height.toDouble(),
                child: Center(
                  child: AdWidget(
                    ad: adManager.bannerAd!,
                  ),
                ),
              ),
            ),

            Gap(10.0),

            // FutureBuilder	非同期処理の進捗に応じてUIを切り替える
            // loadAllRecords()	記録データを非同期で読み込む
            // snapshot.hasData	データがあるかどうかを判定
            // CircularProgressIndicator()	ローディング中に表示
            // ListView.builder	読み込んだ記録をスクロール可能なリストとして表示

            Expanded(
              child: FutureBuilder<List<FruitRecord>>(
                future: database.allFruitRecords,
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Center(child: CircularProgressIndicator());
                  final records = snapshot.data!;

                  return ListView.builder(
                    itemCount: records.length,
                    itemBuilder: (context, index) {
                      final r = records[index];

                      return Dismissible(
                        key: ValueKey(r.id),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.teal,
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.zero,
                          child: Icon(Icons.delete, color: Colors.white70),
                        ),
                        confirmDismiss: (direction) async {
                          ///スワイプによる削除確認のためのダイアログ
                          return await showDialog(
                            context: context,
                            builder: (_) =>
                                AlertDialog(
                                  title: Text(
                                    //記録の消去
                                    S
                                        .of(context)
                                        .deleteRecord0,
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  content: Text(
                                    //記録を消去しますか？
                                    S
                                        .of(context)
                                        .deleteRecord1,
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 15.0),
                                  ),
                                  actions: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        foregroundColor: Colors.white,
                                      ),
                                      child: Text(S
                                          .of(context)
                                          .cancel),
                                      onPressed: () => Navigator.pop(context),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.teal,
                                      ),
                                      child: Text(S
                                          .of(context)
                                          .ok),
                                      onPressed: () async {
                                        await database
                                            .deleteFruitRecord(
                                            records[index].id);
                                        Fluttertoast.showToast(
                                          //消去しました
                                          msg: S
                                              .of(context)
                                              .deleteRecord2,
                                          toastLength: Toast.LENGTH_LONG,
                                        );
                                        Navigator.pop(context);
                                        setState(() {});
                                      },
                                    ),
                                  ],
                                ),
                          );
                        },
                        onDismissed: (direction) async {
                          await database.deleteFruitRecord(r.id);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            color: Colors.white,
                            elevation: 10.0,
                            margin: EdgeInsets.all(5.0),
                            child: ListTile(
                              isThreeLine: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 12),
                              title: AutoSizeText(
                                (r.fruitType.length > 10)
                                    ? r.fruitType.substring(0, 10) + "‥"
                                    : (r.fruitType),
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontFamily: SubFont,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                minFontSize: 15.0,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                              ),
                              subtitle: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    (r.farmName.length > 10)
                                        ? r.farmName.substring(0, 10) + "‥"
                                        : (r.farmName),
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: SubFont,
                                        fontSize: 15.0),
                                    textAlign: TextAlign.left,
                                  ),
                                  AutoSizeText(
                                    (r.memo != null && r.memo!.length > 15)
                                        ? r.memo!.substring(0, 15) + "‥"
                                        : (r.memo ?? ''),
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: SubFont,
                                        fontSize: 15.0),
                                    maxLines: 1,
                                    minFontSize: 8.0,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              leading: SizedBox(
                                width: 56,
                                height: 56,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: ClipOval(
                                            child: _buildImageThumb(
                                                r.imagePaths))),
                                    Gap(2.0),
                                    Text(
                                      _displayDate(r.date),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: SubFont,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                      textAlign: TextAlign.left,
                                    ),
                                    // Text(
                                    //   '${r.date}',
                                    //   style: TextStyle(
                                    //       color: Colors.black,
                                    //       fontFamily: SubFont,
                                    //       fontWeight: FontWeight.bold,
                                    //       fontSize: 10),
                                    //   textAlign: TextAlign.left,
                                    // ),
                                  ],
                                ),
                              ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.black87,
                                ),
                                onPressed: () async {
                                  showDialog(
                                    context: context,
                                    barrierDismissible: true,
                                    builder: (_) =>
                                        AlertDialog(
                                          title: Text(
                                            //記録の消去
                                            S.of(context)
                                                .deleteRecord0,
                                            style: TextStyle(fontSize: 20.0),
                                          ),
                                          content: Text(
                                            //記録を消去しますか？
                                            S.of(context)
                                                .deleteRecord1,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0),
                                          ),
                                          actions: [
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                backgroundColor: Colors.teal,
                                                foregroundColor: Colors.white,
                                              ),
                                              child: Text(S
                                                  .of(context)
                                                  .cancel),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                            ),
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                foregroundColor: Colors.teal,
                                              ),
                                              child: Text(S
                                                  .of(context)
                                                  .ok),
                                              onPressed: () async {
                                                await database
                                                    .deleteFruitRecord(
                                                    records[index].id);
                                                Fluttertoast.showToast(
                                                  //消去しました
                                                  msg: S
                                                      .of(context)
                                                      .deleteRecord2,
                                                  toastLength: Toast
                                                      .LENGTH_LONG,
                                                );
                                                Navigator.pop(context);
                                                setState(() {});
                                              },
                                            ),
                                          ],
                                        ),
                                  ); // 🔁←正しい再描画の方法
                                },
                              ),
                              onLongPress: () async {
                                final ok = await showDialog<bool>(
                                  context: context,
                                  builder: (_) =>
                                      AlertDialog(
                                        title: Text(
                                          //記録の消去
                                          S
                                              .of(context)
                                              .deleteRecord0,
                                          style: TextStyle(fontSize: 20.0),
                                        ),
                                        content: Text(
                                          S
                                              .of(context)
                                              .deleteRecord1,
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15.0),
                                        ),
                                        actions: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.teal,
                                              foregroundColor: Colors.white,
                                            ),
                                            child: Text(S
                                                .of(context)
                                                .cancel),
                                            onPressed: () =>
                                                Navigator.pop(context, false),
                                          ),
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              foregroundColor: Colors.teal,
                                            ),
                                            onPressed: () =>
                                                Navigator.pop(context, true),
                                            child: Text(S
                                                .of(context)
                                                .ok),
                                          ),
                                        ],
                                      ),
                                ) ??
                                    false;
                                if (ok) {
                                  await database.deleteFruitRecord(r.id);
                                  Fluttertoast.showToast(
                                      msg: S
                                          .of(context)
                                          .deleteRecord2);
                                  //再描画
                                  setState(() {});
                                }
                              },
                              onTap: () async {
                                final updated = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        FruitRecordDetailScreen(
                                          recordToEdit: r,
                                          openMode: FruitRecordOpenMode.EDIT,
                                        ),
                                  ),
                                );
                                if (updated == true) {
                                  setState(() {
                                    //DBから再読み込みするメソッド
                                    _loadRecords();
                                  });
                                }
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _goFruitRecordDetailScreen({required FruitRecordOpenMode openMode,
    required FruitRecord? recordToEdit}) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            FruitRecordDetailScreen(
              openMode: openMode,
              recordToEdit: recordToEdit,
            ),
      ),
    ).then((_) {
      setState(() {}); // 編集後の再描画
    });
  }

  _goHomeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  // Widget _buildImageList(String? imageFileNames) {
  //   if (imageFileNames == null ||
  //       imageFileNames.isEmpty ||
  //       imageFileNames == "no_photo.png") {
  //     return ClipRRect(
  //       borderRadius: BorderRadius.circular(20),
  //       child: SizedBox(
  //         width: 40,
  //         height: 40,
  //         child: Image.asset(
  //           "assets/record/no_photo.png",
  //           // fit: BoxFit.cover,
  //         ),
  //       ),
  //     );
  //   }
  //
  //   final fileNames = imageFileNames.split(',');
  //   //表示は1枚までに制限
  //   final limitedFileNames = fileNames.take(1).toList();
  //
  //   return Wrap(
  //     spacing: 3,
  //     runSpacing: 3,
  //     children: limitedFileNames
  //         .map((fileName) => ClipRRect(
  //               borderRadius: BorderRadius.circular(20),
  //               child: SizedBox(
  //                 width: 60,
  //                 height: 60,
  //                 child: Image.file(
  //                   File(p.join(appDirectoryPath, fileName)),
  //                   fit: BoxFit.cover,
  //                   errorBuilder: (context, error, stackTrace) {
  //                     return const FaIcon(FontAwesomeIcons.circleXmark);
  //                   },
  //                 ),
  //               ),
  //             ))
  //         .toList(),
  //   );
  // }

  Future<void> _loadRecords() async {
    await database.fruitRecords;
  }

  //追加
  Widget _buildImageThumb(String? imageFileNames) {
    // この関数は「呼び出し側の SizedBox の大きさ」にピッタリ広がる
    final Widget img;
    if (imageFileNames == null ||
        imageFileNames.isEmpty ||
        imageFileNames == "no_photo.png") {
      img = Image.asset(
        "assets/record/no_photo.png",
        // 正方形にトリミング（歪まない）
        fit: BoxFit.cover,
      );
    } else {
      final first = imageFileNames
          .split(',')
          .first;
      img = Image.file(
        File(p.join(appDirectoryPath, first)),
        fit: BoxFit.cover,
        // 正方形にトリミング（歪まない）
        errorBuilder: (_, __, ___) =>
        const FaIcon(FontAwesomeIcons.circleXmark, size: 16),
      );
    }
    //枠いっぱいにフィット
    return SizedBox.expand(child: img);
  }

  String _displayDate(String? date) {
    if (date == null) return "";
    final s = date.trim();
    return s.isEmpty ? "" : s;
  }
}