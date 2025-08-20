import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/style/style.dart';
import 'package:fruit_hunter/view/screens/home_screen.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../generated/l10n.dart';
import '../../main.dart';
import '../components/fruit_record.dart';
import '../../model/fruit_record_logic.dart';
import 'fruit_record_detail_screen.dart';

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
          onPressed: () => _goFruitRecordDetailScreen(
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
            S.of(context).RecordList,
            style: TextStyle(color: Colors.teal),
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
                future: FruitRecordLogic.loadAllRecords(),
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
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(Icons.delete, color: Colors.white),
                        ),
                        confirmDismiss: (direction) async {

                          ///スワイプによる削除確認のためのダイアログ
                          return await showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text(
                                //記録の消去
                                S.of(context).DeleteRecord0,
                                style: TextStyle(fontSize: 20.0),
                              ),
                              content: Text(
                                //記録を消去しますか？
                                S.of(context).DeleteRecord1,
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 15.0),
                              ),
                              actions: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.teal,
                                  ),
                                  child: Text(S.of(context).OK),
                                  onPressed: () async {
                                    await FruitRecordLogic.deleteRecord(
                                        records[index].id!);
                                    Fluttertoast.showToast(
                                      //消去しました
                                      msg: S.of(context).DeleteRecord2,
                                      toastLength: Toast.LENGTH_LONG,
                                    );
                                    Navigator.pop(context);
                                    setState(() {});
                                  },
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                    foregroundColor: Colors.white,
                                  ),
                                  child: Text(S.of(context).Cancel),
                                  onPressed: () => Navigator.pop(context),
                                )
                              ],
                            ),
                          );
                        },
                        onDismissed: (direction) async {
                          await FruitRecordLogic.deleteRecord(r.id!);
                          setState(() {});
                        },
                        child: Card(
                          color: Colors.white70,
                          elevation: 10.0,
                          margin: EdgeInsets.all(5.0),
                          child: ListTile(
                            onTap: () => _goFruitRecordDetailScreen(
                                recordToEdit: r,
                                openMode: FruitRecordOpenMode.EDIT),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildImageList(r.imagePaths),
                                  Gap(10.0),
                                  Column(
                                    children: [
                                      AutoSizeText(
                                        (r.fruitType != null &&
                                                r.fruitType.length > 5)
                                            ? r.fruitType!.substring(0, 5) + "…"
                                            : (r.fruitType ?? ''),
                                        style: TextStyle(
                                            color: Colors.teal,
                                            fontFamily: SubFont,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10.0),
                                        maxLines: 1,
                                        minFontSize: 8.0,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                      ),
                                      // Text(
                                      //   '${r.fruitType}',
                                      //   style: TextStyle(
                                      //       color: Colors.teal,
                                      //       fontFamily: SubFont,
                                      //       fontWeight: FontWeight.bold,
                                      //       fontSize: 15.0),
                                      // ),
                                      Gap(3.0),
                                      Text(
                                        'in ${r.farmName}',
                                        style: TextStyle(
                                            color: Colors.teal,
                                            fontFamily: SubFont,
                                            fontSize: 10.0),
                                      ),
                                      Gap(3.0),
                                      Text(
                                        '${r.date}',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontFamily: SubFont,
                                            fontSize: 10.0),
                                      ),
                                      Gap(3.0),
                                      AutoSizeText(
                                        (r.memo != null && r.memo!.length > 5)
                                            ? r.memo!.substring(0, 5) + "…"
                                            : (r.memo ?? ''),
                                        // '${r.memo ?? ''}',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontFamily: SubFont,
                                            fontSize: 10.0),
                                        maxLines: 1,
                                        minFontSize: 8.0,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.black87,
                                      ),
                                      onPressed: () async {
                                        showDialog(
                                          context: context,
                                          barrierDismissible: true,
                                          builder: (_) => AlertDialog(
                                            title: Text(
                                              //記録の消去
                                              S.of(context).DeleteRecord0,
                                              style: TextStyle(fontSize: 20.0),
                                            ),
                                            content: Text(
                                              //記録を消去しますか？
                                              S.of(context).DeleteRecord1,
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 15.0),
                                            ),
                                            actions: [
                                              TextButton(
                                                style: TextButton.styleFrom(
                                                  foregroundColor: Colors.teal,
                                                ),
                                                child: Text(S.of(context).OK),
                                                onPressed: () async {
                                                  await FruitRecordLogic
                                                      .deleteRecord(
                                                          records[index].id!);
                                                  Fluttertoast.showToast(
                                                    //消去しました
                                                    msg: S
                                                        .of(context)
                                                        .DeleteRecord2,
                                                    toastLength:
                                                        Toast.LENGTH_LONG,
                                                  );
                                                  Navigator.pop(context);
                                                  setState(() {});
                                                },
                                              ),
                                              TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: Colors.teal,
                                                  foregroundColor: Colors.white,
                                                ),
                                                child:
                                                    Text(S.of(context).Cancel),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              )
                                            ],
                                          ),
                                        ); // 🔁←正しい再描画の方法
                                      },
                                    ),
                                  )
                                ],
                              ),
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

  _goFruitRecordDetailScreen(
      {required FruitRecordOpenMode openMode, required recordToEdit}) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FruitRecordDetailScreen(
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

  Widget _buildImageList(List<String>? imagePaths) {
    if (imagePaths!.isEmpty) {
      return const Text("写真なし");
    }

    return Wrap(
      spacing: 3,
      runSpacing: 3,
      children: imagePaths
          .map((path) => ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: Image.file(
                    File(path),
                    fit: BoxFit.cover,
                  ),
                ),
              ))
          .toList(),
    );
  }
}

///説明
//
/// 上のバー
/// 左の「←」 → 一つ前の画面に戻る
///記録をシェア

/// 日付
/// カレンダーで日付を選択
//
///テキスト入力欄
///果物の種類、農園名、メモ
///必須項目には入力チェック
//
/// 写真表示
/// 複数の写真を小さな正方形で並べる
/// 右上の「×」で削除
//
/// タップでフルスクリーン表示
/// 写真追加ボタン
/// ギャラリーから写真を選んで追加
//
/// 保存ボタン
/// 入力内容を保存
/// 編集か新規作成かに応じて処理