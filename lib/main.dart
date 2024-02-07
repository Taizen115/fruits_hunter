import 'dart:io';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_hunter/view/components/ad_manager.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'db/database.dart';
import 'style/style.dart';
import 'view/screens/home_screen.dart';

late MyDatabase database;
AdManager adManager = AdManager();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var dbPath = await getDbPath();
  database = MyDatabase(dbPath: dbPath);

  //Admobの
  await adManager.initAdmob();
  adManager.initBannerAd();

  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
      //enabled: !kReleaseMode,
      enabled: false,
    ),
  );
}

Future<String> getDbPath() async {
  var dbDir = await getApplicationDocumentsDirectory();
  var dbPath = join(dbDir.path, "fruits.db");

  if (FileSystemEntity.typeSync(dbPath) == FileSystemEntityType.notFound) {
    ByteData byteData = await rootBundle.load("assets/fruits.db");
    List<int> bytes = byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
    await File(dbPath).writeAsBytes(bytes);
  }
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
      theme: ThemeData(brightness: Brightness.light, fontFamily: MainFont, useMaterial3: true),
      home: HomeScreen(),
    );
  }
}
