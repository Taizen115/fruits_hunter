import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruits_hunter/db/database.dart';
import 'package:fruits_hunter/view/screens/home_screen.dart';
import 'package:fruits_hunter/style/style.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

late MyDatabase database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var dbPath = await getDbPath();
  database = MyDatabase(dbPath: dbPath);

  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
      enabled: !kReleaseMode,
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
      title: "FruitsHunter",
      theme: ThemeData(brightness: Brightness.light, fontFamily: MainFont, useMaterial3: true),
      home: HomeScreen(),
    );
  }
}
