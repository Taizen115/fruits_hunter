import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

part 'database.g.dart';

class Fruits extends Table {

  IntColumn get id => integer()();

  TextColumn get name => text()();

  TextColumn get famous_area => text()();

  TextColumn get season => text()();

  TextColumn get famous_breed => text()();

  TextColumn get price_range => text()();

  TextColumn get nutrients => text()();

}

@DriftDatabase(tables: [Fruits])
class MyDatabase extends _$MyDatabase {
  final String dbPath;

  MyDatabase({required this.dbPath}) : super(_openConnection(dbPath));

  @override
  int get schemaVersion => 1;

  Future<List<Fruit>> get Fruits => select(fruits).get();

}

LazyDatabase _openConnection(String dbPath) {
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final file = File(dbPath);
    return NativeDatabase(file);
  });
}