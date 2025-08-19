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

  // FruitRecord copy({int? id}) => FruitRecord(
  //   id: id ?? this.id,
  //   fruitType: fruitType,
  //   farmName: farmName,
  //   date: date,
  //   memo: memo,
  //   imagePaths: imagePaths,
  // );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fruitType': fruitType,
      'farmName': farmName,
      'date': date,
      'memo': memo,
      'imagePaths': imagePaths?.join(',')??"", // リストはカンマ区切りで保存
    };
  }

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
