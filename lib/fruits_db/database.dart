import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class Words extends Table {
  TextColumn get strName => text()();

  TextColumn get strPlace => text()();

  TextColumn get strSeason => text()();

  TextColumn get strBreed => text()();

  TextColumn get strPrice => text()();

  TextColumn get strNutrients => text()();

  @override
  Set<Column> get primaryKey => {strName};
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'fruits.db'));
    return NativeDatabase.createInBackground(file);
  });
}

@DriftDatabase(tables: [Words])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  //Create
  Future addword(Word word) => into(words).insert(word);

  //Read
  Future<List<Word>> get allWords => select(words).get();

  //Update
  Future updateWord(Word word) => update(words).replace(word);

  //Delete
  Future deleteWord(Word word) =>
      (delete(words)..
      where((t) => t.strName.equals(word.strName))).go();
}
