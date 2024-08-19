import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

part 'database.g.dart';

//TODO databaseのコードについて、理解が不足している

class Fruits extends Table {

  IntColumn get id => integer()();

  TextColumn get name => text()();

  TextColumn get famousArea => text()();

  TextColumn get season => text()();

  TextColumn get famousBreed => text()();

  TextColumn get sweetBreed => text()();

  TextColumn get seedlessVarieties => text()();

  TextColumn get priceRange => text()();

  TextColumn get nutrients => text()();

  TextColumn get nutrientEfficacy => text()();

  TextColumn get imageFileName => text()();

  TextColumn get backgroundImage => text()();

  TextColumn get distinguish => text()();

  BoolColumn get typeSpring => boolean().withDefault(Constant(false))();

  BoolColumn get typeSummer => boolean().withDefault(Constant(false))();

  BoolColumn get typeAutumn => boolean().withDefault(Constant(false))();

  BoolColumn get typeWinter => boolean().withDefault(Constant(false))();

}

class Questions extends Table {

  IntColumn get id => integer()();

  TextColumn get question => text()();

  TextColumn get answer => text()();

  TextColumn get choice1 => text()();

  TextColumn get choice2 => text()();

  TextColumn get choice3 => text()();

  TextColumn get explanation => text()();

}

LazyDatabase _openConnection(String dbPath) {
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final file = File(dbPath);
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Fruits, Questions])
class MyDatabase extends _$MyDatabase {
  final String dbPath;


  MyDatabase({required this.dbPath}) : super(_openConnection(dbPath));

  @override
  int get schemaVersion => 1;

  Future<List<Fruit>> get fruitsList => select(fruits).get();

  //TODO 春夏秋冬で分類して呼び出す
  Future<List<Fruit>> get  fruitsSpring =>
      (select(fruits)
        ..where((table) => table.typeSpring.equals(true))).get();

  Future<List<Fruit>> get fruitsSummer =>
      (select(fruits)
        ..where((table) => table.typeSummer.equals(true))).get();

  Future<List<Fruit>> get fruitsAutumn =>
      (select(fruits)
        ..where((table) => table.typeAutumn.equals(true))).get();

  Future<List<Fruit>> get  fruitsWinter =>
      (select(fruits)
        ..where((table) => table.typeWinter.equals(true))).get();


  Future<List<Question>> get quizList => select(questions).get();
}
