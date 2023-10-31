import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

part 'quiz.g.dart';

class Questions extends Table {

  IntColumn get id => integer()();

  TextColumn get question => text()();

  TextColumn get answer => text()();

  TextColumn get choice1 => text()();

  TextColumn get choice2 => text()();

  TextColumn get choice3 => text()();

}

@DriftDatabase(tables: [Questions])
class MyDatabase extends _$MyDatabase {
  final String dbPath;

  MyDatabase({required this.dbPath}) : super(_openConnection(dbPath));

  @override
  int get schemaVersion => 1;

  Future<List<Question>> get quizList => select(questions).get();
}

LazyDatabase _openConnection(String dbPath) {
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final file = File(dbPath);
    return NativeDatabase(file);
  });
}