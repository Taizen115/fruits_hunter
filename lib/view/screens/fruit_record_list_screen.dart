import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_hunter/view/screens/fruit_record_form_edit_screen.dart';
import 'package:fruit_hunter/view/screens/home_screen.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../generated/l10n.dart';
import '../../main.dart';
import '../components/fruit_record.dart';
import '../components/fruit_record_logic.dart';

class FruitRecordListScreen extends StatefulWidget {
  @override
  State<FruitRecordListScreen> createState() => _FruitRecordListScreenState();
}

class _FruitRecordListScreenState extends State<FruitRecordListScreen> {

  //広告
  void initAd() {
    adManager.initBannerAd();
    adManager.loadBannerAd();
  }

  @override
  void dispose() {
    adManager.disposeBannerAd();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
            backgroundColor: Colors.teal,
            child: FaIcon(FontAwesomeIcons.plus),
            onPressed: () => _goFruitRecordFormEditScreen()),
        appBar: AppBar(
          leading: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.teal,),
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
                      return Card(
                        margin: EdgeInsets.all(8),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FruitRecordFormEditScreen(
                                    // ← タップしたレコードを渡す
                                    recordToEdit: r),
                              ),
                            ).then((_) {
                              setState(() {}); // 編集後の再描画
                            });
                          },
                          leading: r.imagePath != null
                              ? Image.file(File(r.imagePath!), width: 60)
                              : null,
                          title: Text('${r.fruitType} in ${r.farmName}'),
                          subtitle: Text('${r.date}\n${r.memo ?? ''}'),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () async {
                              // await FruitRecordLogic.deleteRecord(index);
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
                                        color: Colors.black54, fontSize: 15.0),
                                  ),
                                  actions: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.teal,
                                      ),
                                      child: Text(S.of(context).OK),
                                      onPressed: () async {
                                        await FruitRecordLogic.deleteRecord(index);
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
                              ); // 🔁←正しい再描画の方法
                            },
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

  _goFruitRecordFormEditScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FruitRecordFormEditScreen(),
      ),
    );
  }

  _goHomeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }
}
