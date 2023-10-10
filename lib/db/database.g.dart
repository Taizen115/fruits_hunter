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
  static const VerificationMeta _famous_areaMeta =
      const VerificationMeta('famous_area');
  @override
  late final GeneratedColumn<String> famous_area = GeneratedColumn<String>(
      'famous_area', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _seasonMeta = const VerificationMeta('season');
  @override
  late final GeneratedColumn<String> season = GeneratedColumn<String>(
      'season', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _famous_breedMeta =
      const VerificationMeta('famous_breed');
  @override
  late final GeneratedColumn<String> famous_breed = GeneratedColumn<String>(
      'famous_breed', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _price_rangeMeta =
      const VerificationMeta('price_range');
  @override
  late final GeneratedColumn<String> price_range = GeneratedColumn<String>(
      'price_range', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nutrientsMeta =
      const VerificationMeta('nutrients');
  @override
  late final GeneratedColumn<String> nutrients = GeneratedColumn<String>(
      'nutrients', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, famous_area, season, famous_breed, price_range, nutrients];
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
          _famous_areaMeta,
          famous_area.isAcceptableOrUnknown(
              data['famous_area']!, _famous_areaMeta));
    } else if (isInserting) {
      context.missing(_famous_areaMeta);
    }
    if (data.containsKey('season')) {
      context.handle(_seasonMeta,
          season.isAcceptableOrUnknown(data['season']!, _seasonMeta));
    } else if (isInserting) {
      context.missing(_seasonMeta);
    }
    if (data.containsKey('famous_breed')) {
      context.handle(
          _famous_breedMeta,
          famous_breed.isAcceptableOrUnknown(
              data['famous_breed']!, _famous_breedMeta));
    } else if (isInserting) {
      context.missing(_famous_breedMeta);
    }
    if (data.containsKey('price_range')) {
      context.handle(
          _price_rangeMeta,
          price_range.isAcceptableOrUnknown(
              data['price_range']!, _price_rangeMeta));
    } else if (isInserting) {
      context.missing(_price_rangeMeta);
    }
    if (data.containsKey('nutrients')) {
      context.handle(_nutrientsMeta,
          nutrients.isAcceptableOrUnknown(data['nutrients']!, _nutrientsMeta));
    } else if (isInserting) {
      context.missing(_nutrientsMeta);
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
      famous_area: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}famous_area'])!,
      season: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}season'])!,
      famous_breed: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}famous_breed'])!,
      price_range: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_range'])!,
      nutrients: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nutrients'])!,
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
  final String famous_area;
  final String season;
  final String famous_breed;
  final String price_range;
  final String nutrients;
  const Fruit(
      {required this.id,
      required this.name,
      required this.famous_area,
      required this.season,
      required this.famous_breed,
      required this.price_range,
      required this.nutrients});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['famous_area'] = Variable<String>(famous_area);
    map['season'] = Variable<String>(season);
    map['famous_breed'] = Variable<String>(famous_breed);
    map['price_range'] = Variable<String>(price_range);
    map['nutrients'] = Variable<String>(nutrients);
    return map;
  }

  FruitsCompanion toCompanion(bool nullToAbsent) {
    return FruitsCompanion(
      id: Value(id),
      name: Value(name),
      famous_area: Value(famous_area),
      season: Value(season),
      famous_breed: Value(famous_breed),
      price_range: Value(price_range),
      nutrients: Value(nutrients),
    );
  }

  factory Fruit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Fruit(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      famous_area: serializer.fromJson<String>(json['famous_area']),
      season: serializer.fromJson<String>(json['season']),
      famous_breed: serializer.fromJson<String>(json['famous_breed']),
      price_range: serializer.fromJson<String>(json['price_range']),
      nutrients: serializer.fromJson<String>(json['nutrients']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'famous_area': serializer.toJson<String>(famous_area),
      'season': serializer.toJson<String>(season),
      'famous_breed': serializer.toJson<String>(famous_breed),
      'price_range': serializer.toJson<String>(price_range),
      'nutrients': serializer.toJson<String>(nutrients),
    };
  }

  Fruit copyWith(
          {int? id,
          String? name,
          String? famous_area,
          String? season,
          String? famous_breed,
          String? price_range,
          String? nutrients}) =>
      Fruit(
        id: id ?? this.id,
        name: name ?? this.name,
        famous_area: famous_area ?? this.famous_area,
        season: season ?? this.season,
        famous_breed: famous_breed ?? this.famous_breed,
        price_range: price_range ?? this.price_range,
        nutrients: nutrients ?? this.nutrients,
      );
  @override
  String toString() {
    return (StringBuffer('Fruit(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('famous_area: $famous_area, ')
          ..write('season: $season, ')
          ..write('famous_breed: $famous_breed, ')
          ..write('price_range: $price_range, ')
          ..write('nutrients: $nutrients')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, famous_area, season, famous_breed, price_range, nutrients);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Fruit &&
          other.id == this.id &&
          other.name == this.name &&
          other.famous_area == this.famous_area &&
          other.season == this.season &&
          other.famous_breed == this.famous_breed &&
          other.price_range == this.price_range &&
          other.nutrients == this.nutrients);
}

class FruitsCompanion extends UpdateCompanion<Fruit> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> famous_area;
  final Value<String> season;
  final Value<String> famous_breed;
  final Value<String> price_range;
  final Value<String> nutrients;
  final Value<int> rowid;
  const FruitsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.famous_area = const Value.absent(),
    this.season = const Value.absent(),
    this.famous_breed = const Value.absent(),
    this.price_range = const Value.absent(),
    this.nutrients = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FruitsCompanion.insert({
    required int id,
    required String name,
    required String famous_area,
    required String season,
    required String famous_breed,
    required String price_range,
    required String nutrients,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        famous_area = Value(famous_area),
        season = Value(season),
        famous_breed = Value(famous_breed),
        price_range = Value(price_range),
        nutrients = Value(nutrients);
  static Insertable<Fruit> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? famous_area,
    Expression<String>? season,
    Expression<String>? famous_breed,
    Expression<String>? price_range,
    Expression<String>? nutrients,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (famous_area != null) 'famous_area': famous_area,
      if (season != null) 'season': season,
      if (famous_breed != null) 'famous_breed': famous_breed,
      if (price_range != null) 'price_range': price_range,
      if (nutrients != null) 'nutrients': nutrients,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FruitsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? famous_area,
      Value<String>? season,
      Value<String>? famous_breed,
      Value<String>? price_range,
      Value<String>? nutrients,
      Value<int>? rowid}) {
    return FruitsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      famous_area: famous_area ?? this.famous_area,
      season: season ?? this.season,
      famous_breed: famous_breed ?? this.famous_breed,
      price_range: price_range ?? this.price_range,
      nutrients: nutrients ?? this.nutrients,
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
    if (famous_area.present) {
      map['famous_area'] = Variable<String>(famous_area.value);
    }
    if (season.present) {
      map['season'] = Variable<String>(season.value);
    }
    if (famous_breed.present) {
      map['famous_breed'] = Variable<String>(famous_breed.value);
    }
    if (price_range.present) {
      map['price_range'] = Variable<String>(price_range.value);
    }
    if (nutrients.present) {
      map['nutrients'] = Variable<String>(nutrients.value);
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
          ..write('famous_area: $famous_area, ')
          ..write('season: $season, ')
          ..write('famous_breed: $famous_breed, ')
          ..write('price_range: $price_range, ')
          ..write('nutrients: $nutrients, ')
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
