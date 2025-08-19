import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../view/components/fruit_record.dart';

class FruitRecordDB {
  static final FruitRecordDB instance = FruitRecordDB._init();
  static Database? _database;

  FruitRecordDB._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('fruit_records.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const textNullable = 'TEXT';

    await db.execute('''
      CREATE TABLE fruit_records ( 
        id $idType, 
        fruitType $textType,
        farmName $textType,
        date $textType,
        memo $textNullable,
        imagePaths $textNullable
      )
    ''');
  }

  Future<int> create(FruitRecord record) async {
    final db = await instance.database;
    return await db.insert(
      'fruit_records',
      record.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<FruitRecord>> readAllRecords() async {
    final db = await instance.database;
    final result = await db.query('fruit_records');
    return result.map((json) => FruitRecord.fromMap(json)).toList();
  }

  Future<int> delete(int id) async {
    final db = await instance.database;
    return await db.delete('fruit_records', where: 'id = ?', whereArgs: [id]);
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }


  Future<int> update(FruitRecord record) async {
    final db = await instance.database;
    return await db.update(
      'fruit_records',
      record.toMap(),
      where: 'id = ?',
      whereArgs: [record.id],
    );
  }
}
