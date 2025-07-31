import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'fruit_record.dart';

class FruitRecordLogic {
  static const String _key = 'fruit_records';

  /// 保存（既存に追加）
  static Future<void> saveRecord(FruitRecord record) async {
    final prefs = await SharedPreferences.getInstance();
    final existingData = prefs.getStringList(_key) ?? [];

    existingData.add(record.toJson());

    await prefs.setStringList(_key, existingData);
  }

  /// すべて取得
  static Future<List<FruitRecord>> loadAllRecords() async {
    final prefs = await SharedPreferences.getInstance();
    final list = prefs.getStringList(_key) ?? [];
    return list.map((json) => FruitRecord.fromJson(json)).toList();
  }

  /// 全削除（必要に応じて）
  static Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }

  static Future<void> deleteRecord(int index) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> jsonList = prefs.getStringList(_key) ?? [];

    if (index >= 0 && index < jsonList.length) {
      jsonList.removeAt(index);
      await prefs.setStringList(_key, jsonList); // 🔴←これが抜けてるとダメ
    }
  }


  ///編集
  static Future<void> updateRecord(int id, FruitRecord updatedRecord) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> rawList = prefs.getStringList('fruitRecords') ?? [];

    final updatedList = rawList.map((recordStr) {
      final recordMap = json.decode(recordStr);
      if (recordMap['id'] == id) {
        // 更新
        return json.encode(updatedRecord.toMap());
      } else {
        return recordStr;
      }
    }).toList();

    await prefs.setStringList('fruitRecords', updatedList);
  }

}