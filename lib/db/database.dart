import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

part 'database.g.dart';

//TODO databaseのコードについて、理解が不足している

class Fruits extends Table {

  IntColumn get id => integer()();

  TextColumn get name => text()();

  TextColumn get nameEn => text().nullable()();

  TextColumn get famousArea => text()();

  TextColumn get famousAreaEn => text().nullable()();

  TextColumn get season => text()();

  TextColumn get seasonEn => text().nullable()();

  TextColumn get famousBreed => text()();

  TextColumn get famousBreedEn => text().nullable()();

  TextColumn get sweetBreed => text()();

  TextColumn get sweetBreedEn => text().nullable()();

  TextColumn get seedlessVarieties => text()();

  TextColumn get seedlessVarietiesEn => text().nullable()();

  TextColumn get priceRange => text()();

  TextColumn get priceRangeEn => text().nullable()();

  TextColumn get nutrients => text()();

  TextColumn get nutrientsEn => text().nullable()();

  TextColumn get nutrientEfficacy => text()();

  TextColumn get nutrientEfficacyEn => text().nullable()();

  TextColumn get imageFileName => text()();

  TextColumn get backgroundImage => text()();

  TextColumn get distinguish => text()();

  TextColumn get distinguishEn => text().nullable()();

  BoolColumn get typeSpring => boolean().withDefault(Constant(false))();

  BoolColumn get typeSummer => boolean().withDefault(Constant(false))();

  BoolColumn get typeAutumn => boolean().withDefault(Constant(false))();

  BoolColumn get typeWinter => boolean().withDefault(Constant(false))();

}

class Questions extends Table {

  IntColumn get id => integer()();

  TextColumn get question => text()();

  TextColumn get questionEn => text().nullable()();

  TextColumn get answer => text()();

  TextColumn get answerEn => text().nullable()();

  TextColumn get choice1 => text()();

  TextColumn get choice1En => text().nullable()();

  TextColumn get choice2 => text()();

  TextColumn get choice2En => text().nullable()();

  TextColumn get choice3 => text()();

  TextColumn get choice3En => text().nullable()();

  TextColumn get explanation => text()();

  TextColumn get explanationEn => text().nullable()();

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
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 2) {
          // we added the dueDate property in the change from version 1 to
          // version 2
          await m.addColumn(questions, questions.questionEn);
          await m.addColumn(questions, questions.answerEn);
          await m.addColumn(questions, questions.choice1En);
          await m.addColumn(questions, questions.choice2En);
          await m.addColumn(questions, questions.choice3En);
          await m.addColumn(questions, questions.explanationEn);

          await m.addColumn(fruits, fruits.nameEn);
          await m.addColumn(fruits, fruits.famousAreaEn);
          await m.addColumn(fruits, fruits.seasonEn);
          await m.addColumn(fruits, fruits.famousBreedEn);
          await m.addColumn(fruits, fruits.sweetBreedEn);
          await m.addColumn(fruits, fruits.seedlessVarietiesEn);
          await m.addColumn(fruits, fruits.priceRangeEn);
          await m.addColumn(fruits, fruits.nutrientsEn);
          await m.addColumn(fruits, fruits.nutrientEfficacyEn);
          await m.addColumn(fruits, fruits.distinguishEn);
        }
      },
    );
  }


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
