import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'fruit_record.dart';

class FruitRecordLogic {
  static const String _key = 'fruit_records';

  /// 保存（既存に追加）

  //ステップ	処理内容	詳細
  // ① SharedPreferences.getInstance()	端末のローカルストレージにアクセスできるようにする	prefs はデータベース的な役割
  // ② prefs.getStringList(_key)	今までに保存した記録一覧を取り出す	null のときは [] を使って空の状態で初期化
  // ③ existingData.add(record.toJson())	新しい記録を JSON 形式でリストに追加	record.toJson() は {"title":"〜", "memo":"〜"} のような文字列
  // ④ prefs.setStringList(_key, existingData)	すべての記録リストを端末に保存し直す	上書き保存になるが、addしているためデータは増えていく

  static Future<void> saveRecord(FruitRecord record) async {
    final prefs = await SharedPreferences.getInstance();
    final existingData = prefs.getStringList(_key) ?? [];

    existingData.add(record.toJson());

    await prefs.setStringList(_key, existingData);
  }

  /// すべて取得
  //データ取得	SharedPreferences から JSON文字列のリストを取得
  // 変換処理	各JSON文字列を FruitRecord に変換
  // 返すもの	FruitRecord のリスト（List<FruitRecord>）

  static Future<List<FruitRecord>> loadAllRecords() async {
    final prefs = await SharedPreferences.getInstance();
    final list = prefs.getStringList(_key) ?? [];
    return list.map((json) => FruitRecord.fromJson(json)).toList();
  }

  /// 全削除（必要に応じて）

  //deleteRecord(int index) の意味
  // 処理の流れ：
  // SharedPreferences に保存されている文字列リスト（JSON形式の果物記録）を読み込みます。
  //
  // 指定された index が範囲内かチェックします。
  //
  // 対象の要素を removeAt(index) で削除します。
  //
  // 削除後のリストをもう一度 SharedPreferences に上書き保存します。
  //
  // ⚠️ コメントにもある通り、最後の prefs.setStringList() を忘れると、実際の保存データは更新されません。


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

  //各レコード（JSON文字列）を recordStr として1つずつ処理。
  //
  // json.decode(recordStr) で Map<String, dynamic> に変換。
  //
  // もし recordMap['id'] が一致すれば、updatedRecord に差し替える。
  //
  // updatedRecord.toMap() を JSON 文字列に変換して返す。
  //
  // それ以外はそのままの文字列を返す。

  static Future<void> updateRecord(int id, FruitRecord updatedRecord) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> rawList = prefs.getStringList(_key) ?? [];

    final updatedList = rawList.map((recordStr) {
      final recordMap = json.decode(recordStr);
      if (recordMap['id'] == id) {
        // 更新
        return json.encode(updatedRecord.toMap());
      } else {
        return recordStr;
      }
    }).toList();

    await prefs.setStringList(_key, updatedList);
  }

}