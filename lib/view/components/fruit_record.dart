import 'dart:convert';

//この FruitRecord クラスは、
//
// 「果物狩りに行ったときの1回分の記録」を、アプリの中でしっかり管理するための箱
//  みたいなもの!
// 日付・果物の種類・農園の名前・写真・メモ…を一緒に入れておける


class FruitRecord {
  final String fruitType;
  final String farmName;
  final String date;
  final String? memo;
  final String? imagePath; // ← 追加！
  final int? id;

  FruitRecord({
    required this.fruitType,
    required this.farmName,
    required this.date,
    this.memo,
    this.imagePath,
    this.id,
  });

  //この関数は、「今この FruitRecord に入っているデータを Map にして返すよ」という意味。
  // => は「こういう形で返すよ」という省略記法（普通に { return {...}; } でもOK）。
  // dynamic は、「中身の型は何でもあり（文字でも数でもOK）」という意味。

  Map<String, dynamic> toMap() => {
    'fruitType': fruitType,
    'farmName': farmName,
    'date': date,
    'memo': memo,
    'imagePath': imagePath,
    'id': id,
  };

  //「名前と値のセット（Map）を使って、果物狩りの記録を作る工場」
  //
  // みたいなものです。
  // 保存されているデータを、アプリで使える形に直しているイメージです！

  factory FruitRecord.fromMap(Map<String, dynamic> map) => FruitRecord(
    fruitType: map['fruitType'],
    farmName: map['farmName'],
    date: map['date'],
    memo: map['memo'],
    imagePath: map['imagePath'],
    id: map['id'],
  );

  //toJson() は、
  // 「果物狩りの記録を、**アプリやネットでやりとりしやすい文字の形（JSON）**にする魔法」
  // fromJson() は、
  // 「その文字の形（JSON）を、また本物の記録の形に戻す魔法」

  String toJson() => json.encode(toMap());
  static FruitRecord fromJson(String source) => FruitRecord.fromMap(json.decode(source));
}
