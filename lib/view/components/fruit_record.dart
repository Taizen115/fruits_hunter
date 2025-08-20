class FruitRecord {
  final int? id;
  final String fruitType;
  final String farmName;
  final String date;
  final String? memo;
  final List<String> imagePaths;

  FruitRecord({
    this.id,
    required this.fruitType,
    required this.farmName,
    required this.date,
    this.memo,
    this.imagePaths = const [],
  });

  ///すでにある記録を「少しだけ変更してコピー」を作りたいときに使う
  /// 例：元の記録はそのままにして、idだけ変えて保存したい場合など

  FruitRecord copy({int? id}) => FruitRecord(
    id: id ?? this.id,
    fruitType: fruitType,
    farmName: farmName,
    date: date,
    memo: memo,
    imagePaths: imagePaths,
  );

  ///データベースやファイルに保存するときに Map型（キーと値のセット）に変換
  /// imagePaths.join(',') → 画像のリストをカンマでつなげた文字列に変換
  /// 例：["a.jpg","b.jpg"] → "a.jpg,b.jpg"

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fruitType': fruitType,
      'farmName': farmName,
      'date': date,
      'memo': memo,
      'imagePaths': imagePaths.join(',')??"", // リストはカンマ区切りで保存
    };
  }

  ///データベースやファイルから読み込んだ Map を FruitRecord に戻す
  ///split(',') → 文字列をリストに戻す
  /// 例： "a.jpg,b.jpg" → ["a.jpg","b.jpg"]

  factory FruitRecord.fromMap(Map<String, dynamic> map) {
    return FruitRecord(
      id: map['id'],
      fruitType: map['fruitType'],
      farmName: map['farmName'],
      date: map['date'],
      memo: map['memo'],
      imagePaths: map['imagePaths'] != null
          ? (map['imagePaths'] as String).split(',')
          : [],
    );
  }
}
