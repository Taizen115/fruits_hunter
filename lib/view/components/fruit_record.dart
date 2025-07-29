import 'dart:convert';

class FruitRecord {
  final int? id;
  final String fruitType;
  final String farmName;
  final String date;
  final String? memo;
  final String? imagePath; // ← 追加！

  FruitRecord({
    required this.fruitType,
    required this.farmName,
    required this.date,
    this.memo,
    this.imagePath,
    this.id,
  });

  Map<String, dynamic> toMap() => {
    'fruitType': fruitType,
    'farmName': farmName,
    'date': date,
    'memo': memo,
    'imagePath': imagePath,
  };

  factory FruitRecord.fromMap(Map<String, dynamic> map) => FruitRecord(
    fruitType: map['fruitType'],
    farmName: map['farmName'],
    date: map['date'],
    memo: map['memo'],
    imagePath: map['imagePath'],
  );

  String toJson() => json.encode(toMap());
  static FruitRecord fromJson(String source) => FruitRecord.fromMap(json.decode(source));
}
