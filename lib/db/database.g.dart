// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $FruitsTable extends Fruits with TableInfo<$FruitsTable, Fruit> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FruitsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _famousAreaMeta =
      const VerificationMeta('famousArea');
  @override
  late final GeneratedColumn<String> famousArea = GeneratedColumn<String>(
      'famous_area', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _seasonMeta = const VerificationMeta('season');
  @override
  late final GeneratedColumn<String> season = GeneratedColumn<String>(
      'season', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _famousBreedMeta =
      const VerificationMeta('famousBreed');
  @override
  late final GeneratedColumn<String> famousBreed = GeneratedColumn<String>(
      'famous_breed', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceRangeMeta =
      const VerificationMeta('priceRange');
  @override
  late final GeneratedColumn<String> priceRange = GeneratedColumn<String>(
      'price_range', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nutrientsMeta =
      const VerificationMeta('nutrients');
  @override
  late final GeneratedColumn<String> nutrients = GeneratedColumn<String>(
      'nutrients', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageFileNameMeta =
      const VerificationMeta('imageFileName');
  @override
  late final GeneratedColumn<String> imageFileName = GeneratedColumn<String>(
      'image_file_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        famousArea,
        season,
        famousBreed,
        priceRange,
        nutrients,
        imageFileName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'fruits';
  @override
  VerificationContext validateIntegrity(Insertable<Fruit> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('famous_area')) {
      context.handle(
          _famousAreaMeta,
          famousArea.isAcceptableOrUnknown(
              data['famous_area']!, _famousAreaMeta));
    } else if (isInserting) {
      context.missing(_famousAreaMeta);
    }
    if (data.containsKey('season')) {
      context.handle(_seasonMeta,
          season.isAcceptableOrUnknown(data['season']!, _seasonMeta));
    } else if (isInserting) {
      context.missing(_seasonMeta);
    }
    if (data.containsKey('famous_breed')) {
      context.handle(
          _famousBreedMeta,
          famousBreed.isAcceptableOrUnknown(
              data['famous_breed']!, _famousBreedMeta));
    } else if (isInserting) {
      context.missing(_famousBreedMeta);
    }
    if (data.containsKey('price_range')) {
      context.handle(
          _priceRangeMeta,
          priceRange.isAcceptableOrUnknown(
              data['price_range']!, _priceRangeMeta));
    } else if (isInserting) {
      context.missing(_priceRangeMeta);
    }
    if (data.containsKey('nutrients')) {
      context.handle(_nutrientsMeta,
          nutrients.isAcceptableOrUnknown(data['nutrients']!, _nutrientsMeta));
    } else if (isInserting) {
      context.missing(_nutrientsMeta);
    }
    if (data.containsKey('image_file_name')) {
      context.handle(
          _imageFileNameMeta,
          imageFileName.isAcceptableOrUnknown(
              data['image_file_name']!, _imageFileNameMeta));
    } else if (isInserting) {
      context.missing(_imageFileNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Fruit map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Fruit(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      famousArea: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}famous_area'])!,
      season: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}season'])!,
      famousBreed: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}famous_breed'])!,
      priceRange: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_range'])!,
      nutrients: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nutrients'])!,
      imageFileName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}image_file_name'])!,
    );
  }

  @override
  $FruitsTable createAlias(String alias) {
    return $FruitsTable(attachedDatabase, alias);
  }
}

class Fruit extends DataClass implements Insertable<Fruit> {
  final int id;
  final String name;
  final String famousArea;
  final String season;
  final String famousBreed;
  final String priceRange;
  final String nutrients;
  final String imageFileName;
  const Fruit(
      {required this.id,
      required this.name,
      required this.famousArea,
      required this.season,
      required this.famousBreed,
      required this.priceRange,
      required this.nutrients,
      required this.imageFileName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['famous_area'] = Variable<String>(famousArea);
    map['season'] = Variable<String>(season);
    map['famous_breed'] = Variable<String>(famousBreed);
    map['price_range'] = Variable<String>(priceRange);
    map['nutrients'] = Variable<String>(nutrients);
    map['image_file_name'] = Variable<String>(imageFileName);
    return map;
  }

  FruitsCompanion toCompanion(bool nullToAbsent) {
    return FruitsCompanion(
      id: Value(id),
      name: Value(name),
      famousArea: Value(famousArea),
      season: Value(season),
      famousBreed: Value(famousBreed),
      priceRange: Value(priceRange),
      nutrients: Value(nutrients),
      imageFileName: Value(imageFileName),
    );
  }

  factory Fruit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Fruit(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      famousArea: serializer.fromJson<String>(json['famousArea']),
      season: serializer.fromJson<String>(json['season']),
      famousBreed: serializer.fromJson<String>(json['famousBreed']),
      priceRange: serializer.fromJson<String>(json['priceRange']),
      nutrients: serializer.fromJson<String>(json['nutrients']),
      imageFileName: serializer.fromJson<String>(json['imageFileName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'famousArea': serializer.toJson<String>(famousArea),
      'season': serializer.toJson<String>(season),
      'famousBreed': serializer.toJson<String>(famousBreed),
      'priceRange': serializer.toJson<String>(priceRange),
      'nutrients': serializer.toJson<String>(nutrients),
      'imageFileName': serializer.toJson<String>(imageFileName),
    };
  }

  Fruit copyWith(
          {int? id,
          String? name,
          String? famousArea,
          String? season,
          String? famousBreed,
          String? priceRange,
          String? nutrients,
          String? imageFileName}) =>
      Fruit(
        id: id ?? this.id,
        name: name ?? this.name,
        famousArea: famousArea ?? this.famousArea,
        season: season ?? this.season,
        famousBreed: famousBreed ?? this.famousBreed,
        priceRange: priceRange ?? this.priceRange,
        nutrients: nutrients ?? this.nutrients,
        imageFileName: imageFileName ?? this.imageFileName,
      );
  @override
  String toString() {
    return (StringBuffer('Fruit(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('famousArea: $famousArea, ')
          ..write('season: $season, ')
          ..write('famousBreed: $famousBreed, ')
          ..write('priceRange: $priceRange, ')
          ..write('nutrients: $nutrients, ')
          ..write('imageFileName: $imageFileName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, famousArea, season, famousBreed,
      priceRange, nutrients, imageFileName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Fruit &&
          other.id == this.id &&
          other.name == this.name &&
          other.famousArea == this.famousArea &&
          other.season == this.season &&
          other.famousBreed == this.famousBreed &&
          other.priceRange == this.priceRange &&
          other.nutrients == this.nutrients &&
          other.imageFileName == this.imageFileName);
}

class FruitsCompanion extends UpdateCompanion<Fruit> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> famousArea;
  final Value<String> season;
  final Value<String> famousBreed;
  final Value<String> priceRange;
  final Value<String> nutrients;
  final Value<String> imageFileName;
  final Value<int> rowid;
  const FruitsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.famousArea = const Value.absent(),
    this.season = const Value.absent(),
    this.famousBreed = const Value.absent(),
    this.priceRange = const Value.absent(),
    this.nutrients = const Value.absent(),
    this.imageFileName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FruitsCompanion.insert({
    required int id,
    required String name,
    required String famousArea,
    required String season,
    required String famousBreed,
    required String priceRange,
    required String nutrients,
    required String imageFileName,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        famousArea = Value(famousArea),
        season = Value(season),
        famousBreed = Value(famousBreed),
        priceRange = Value(priceRange),
        nutrients = Value(nutrients),
        imageFileName = Value(imageFileName);
  static Insertable<Fruit> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? famousArea,
    Expression<String>? season,
    Expression<String>? famousBreed,
    Expression<String>? priceRange,
    Expression<String>? nutrients,
    Expression<String>? imageFileName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (famousArea != null) 'famous_area': famousArea,
      if (season != null) 'season': season,
      if (famousBreed != null) 'famous_breed': famousBreed,
      if (priceRange != null) 'price_range': priceRange,
      if (nutrients != null) 'nutrients': nutrients,
      if (imageFileName != null) 'image_file_name': imageFileName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FruitsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? famousArea,
      Value<String>? season,
      Value<String>? famousBreed,
      Value<String>? priceRange,
      Value<String>? nutrients,
      Value<String>? imageFileName,
      Value<int>? rowid}) {
    return FruitsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      famousArea: famousArea ?? this.famousArea,
      season: season ?? this.season,
      famousBreed: famousBreed ?? this.famousBreed,
      priceRange: priceRange ?? this.priceRange,
      nutrients: nutrients ?? this.nutrients,
      imageFileName: imageFileName ?? this.imageFileName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (famousArea.present) {
      map['famous_area'] = Variable<String>(famousArea.value);
    }
    if (season.present) {
      map['season'] = Variable<String>(season.value);
    }
    if (famousBreed.present) {
      map['famous_breed'] = Variable<String>(famousBreed.value);
    }
    if (priceRange.present) {
      map['price_range'] = Variable<String>(priceRange.value);
    }
    if (nutrients.present) {
      map['nutrients'] = Variable<String>(nutrients.value);
    }
    if (imageFileName.present) {
      map['image_file_name'] = Variable<String>(imageFileName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FruitsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('famousArea: $famousArea, ')
          ..write('season: $season, ')
          ..write('famousBreed: $famousBreed, ')
          ..write('priceRange: $priceRange, ')
          ..write('nutrients: $nutrients, ')
          ..write('imageFileName: $imageFileName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $FruitsTable fruits = $FruitsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [fruits];
}
