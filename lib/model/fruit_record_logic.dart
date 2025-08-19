
import '../db/fruit_record_db.dart';
import '../view/components/fruit_record.dart';

class FruitRecordLogic {
  static Future<void> saveRecord(FruitRecord record) async {
    if (record.id == null) {
      await FruitRecordDB.instance.create(record); // 新規
    } else {
      await FruitRecordDB.instance.update(record); // 更新
    }
  }

  static Future<List<FruitRecord>> loadAllRecords() async {
    return await FruitRecordDB.instance.readAllRecords();
  }

  static Future<void> deleteRecord(int id) async {
    await FruitRecordDB.instance.delete(id);
  }

  static Future<void> updateRecord(int id, FruitRecord newRecord) async {
    await FruitRecordDB.instance.update(newRecord.copy(id: id));
  }
}
