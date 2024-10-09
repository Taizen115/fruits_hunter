import 'dart:io';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit_hunter/generated/l10n.dart';
import 'package:fruit_hunter/model/ad_manager.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'db/database.dart';
import 'style/style.dart';
import 'view/screens/home_screen.dart';
import "package:intl/intl.dart";


late MyDatabase database;

//広告
AdManager adManager = AdManager();

//多言語化
String currentLanguage = "en";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var dbPath = await getDbPath();
  database = MyDatabase(dbPath: dbPath);

  //多言語化
  currentLanguage = Intl.getCurrentLocale();

  //広告
  await adManager.initAdmob();


  //DevicePreviewは、色んな機種で動きを確認できる。trueにしたらその機能が使える
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
      enabled: false,
    ),
  );
}

Future<String> getDbPath() async {
  var dbDir = await getApplicationDocumentsDirectory();
  var dbPath = join(dbDir.path, "fruits.db");

  // if (FileSystemEntity.typeSync(dbPath) == FileSystemEntityType.notFound) {
    ByteData byteData = await rootBundle.load("assets/fruits.db");
    List<int> bytes = byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
    await File(dbPath).writeAsBytes(bytes);
  // }
  return dbPath;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: "Fruit Hunter",

      //多言語対応
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,

      //Deviceのテーマを変更できる。useMaterial3をtrueにすると最新の表示になる。
      theme: ThemeData(brightness: Brightness.light, fontFamily: MainFont, useMaterial3: true),
      home: HomeScreen(),
    );
  }
}
