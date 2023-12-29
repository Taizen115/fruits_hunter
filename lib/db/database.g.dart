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
  static const VerificationMeta _seedlessVarietiesMeta =
      const VerificationMeta('seedlessVarieties');
  @override
  late final GeneratedColumn<String> seedlessVarieties =
      GeneratedColumn<String>('seedless_varieties', aliasedName, false,
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
  static const VerificationMeta _nutrientEfficacyMeta =
      const VerificationMeta('nutrientEfficacy');
  @override
  late final GeneratedColumn<String> nutrientEfficacy = GeneratedColumn<String>(
      'nutrient_efficacy', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageFileNameMeta =
      const VerificationMeta('imageFileName');
  @override
  late final GeneratedColumn<String> imageFileName = GeneratedColumn<String>(
      'image_file_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _backgroundImageMeta =
      const VerificationMeta('backgroundImage');
  @override
  late final GeneratedColumn<String> backgroundImage = GeneratedColumn<String>(
      'background_image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _distinguishMeta =
      const VerificationMeta('distinguish');
  @override
  late final GeneratedColumn<String> distinguish = GeneratedColumn<String>(
      'distinguish', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeSpringMeta =
      const VerificationMeta('typeSpring');
  @override
  late final GeneratedColumn<bool> typeSpring = GeneratedColumn<bool>(
      'type_spring', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("type_spring" IN (0, 1))'),
      defaultValue: Constant(false));
  static const VerificationMeta _typeSummerMeta =
      const VerificationMeta('typeSummer');
  @override
  late final GeneratedColumn<bool> typeSummer = GeneratedColumn<bool>(
      'type_summer', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("type_summer" IN (0, 1))'),
      defaultValue: Constant(false));
  static const VerificationMeta _typeAutumnMeta =
      const VerificationMeta('typeAutumn');
  @override
  late final GeneratedColumn<bool> typeAutumn = GeneratedColumn<bool>(
      'type_autumn', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("type_autumn" IN (0, 1))'),
      defaultValue: Constant(false));
  static const VerificationMeta _typeWinterMeta =
      const VerificationMeta('typeWinter');
  @override
  late final GeneratedColumn<bool> typeWinter = GeneratedColumn<bool>(
      'type_winter', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("type_winter" IN (0, 1))'),
      defaultValue: Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        famousArea,
        season,
        famousBreed,
        seedlessVarieties,
        priceRange,
        nutrients,
        nutrientEfficacy,
        imageFileName,
        backgroundImage,
        distinguish,
        typeSpring,
        typeSummer,
        typeAutumn,
        typeWinter
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
    if (data.containsKey('seedless_varieties')) {
      context.handle(
          _seedlessVarietiesMeta,
          seedlessVarieties.isAcceptableOrUnknown(
              data['seedless_varieties']!, _seedlessVarietiesMeta));
    } else if (isInserting) {
      context.missing(_seedlessVarietiesMeta);
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
    if (data.containsKey('nutrient_efficacy')) {
      context.handle(
          _nutrientEfficacyMeta,
          nutrientEfficacy.isAcceptableOrUnknown(
              data['nutrient_efficacy']!, _nutrientEfficacyMeta));
    } else if (isInserting) {
      context.missing(_nutrientEfficacyMeta);
    }
    if (data.containsKey('image_file_name')) {
      context.handle(
          _imageFileNameMeta,
          imageFileName.isAcceptableOrUnknown(
              data['image_file_name']!, _imageFileNameMeta));
    } else if (isInserting) {
      context.missing(_imageFileNameMeta);
    }
    if (data.containsKey('background_image')) {
      context.handle(
          _backgroundImageMeta,
          backgroundImage.isAcceptableOrUnknown(
              data['background_image']!, _backgroundImageMeta));
    } else if (isInserting) {
      context.missing(_backgroundImageMeta);
    }
    if (data.containsKey('distinguish')) {
      context.handle(
          _distinguishMeta,
          distinguish.isAcceptableOrUnknown(
              data['distinguish']!, _distinguishMeta));
    } else if (isInserting) {
      context.missing(_distinguishMeta);
    }
    if (data.containsKey('type_spring')) {
      context.handle(
          _typeSpringMeta,
          typeSpring.isAcceptableOrUnknown(
              data['type_spring']!, _typeSpringMeta));
    }
    if (data.containsKey('type_summer')) {
      context.handle(
          _typeSummerMeta,
          typeSummer.isAcceptableOrUnknown(
              data['type_summer']!, _typeSummerMeta));
    }
    if (data.containsKey('type_autumn')) {
      context.handle(
          _typeAutumnMeta,
          typeAutumn.isAcceptableOrUnknown(
              data['type_autumn']!, _typeAutumnMeta));
    }
    if (data.containsKey('type_winter')) {
      context.handle(
          _typeWinterMeta,
          typeWinter.isAcceptableOrUnknown(
              data['type_winter']!, _typeWinterMeta));
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
      seedlessVarieties: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}seedless_varieties'])!,
      priceRange: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_range'])!,
      nutrients: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nutrients'])!,
      nutrientEfficacy: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}nutrient_efficacy'])!,
      imageFileName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}image_file_name'])!,
      backgroundImage: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}background_image'])!,
      distinguish: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}distinguish'])!,
      typeSpring: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}type_spring'])!,
      typeSummer: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}type_summer'])!,
      typeAutumn: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}type_autumn'])!,
      typeWinter: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}type_winter'])!,
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
  final String seedlessVarieties;
  final String priceRange;
  final String nutrients;
  final String nutrientEfficacy;
  final String imageFileName;
  final String backgroundImage;
  final String distinguish;
  final bool typeSpring;
  final bool typeSummer;
  final bool typeAutumn;
  final bool typeWinter;
  const Fruit(
      {required this.id,
      required this.name,
      required this.famousArea,
      required this.season,
      required this.famousBreed,
      required this.seedlessVarieties,
      required this.priceRange,
      required this.nutrients,
      required this.nutrientEfficacy,
      required this.imageFileName,
      required this.backgroundImage,
      required this.distinguish,
      required this.typeSpring,
      required this.typeSummer,
      required this.typeAutumn,
      required this.typeWinter});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['famous_area'] = Variable<String>(famousArea);
    map['season'] = Variable<String>(season);
    map['famous_breed'] = Variable<String>(famousBreed);
    map['seedless_varieties'] = Variable<String>(seedlessVarieties);
    map['price_range'] = Variable<String>(priceRange);
    map['nutrients'] = Variable<String>(nutrients);
    map['nutrient_efficacy'] = Variable<String>(nutrientEfficacy);
    map['image_file_name'] = Variable<String>(imageFileName);
    map['background_image'] = Variable<String>(backgroundImage);
    map['distinguish'] = Variable<String>(distinguish);
    map['type_spring'] = Variable<bool>(typeSpring);
    map['type_summer'] = Variable<bool>(typeSummer);
    map['type_autumn'] = Variable<bool>(typeAutumn);
    map['type_winter'] = Variable<bool>(typeWinter);
    return map;
  }

  FruitsCompanion toCompanion(bool nullToAbsent) {
    return FruitsCompanion(
      id: Value(id),
      name: Value(name),
      famousArea: Value(famousArea),
      season: Value(season),
      famousBreed: Value(famousBreed),
      seedlessVarieties: Value(seedlessVarieties),
      priceRange: Value(priceRange),
      nutrients: Value(nutrients),
      nutrientEfficacy: Value(nutrientEfficacy),
      imageFileName: Value(imageFileName),
      backgroundImage: Value(backgroundImage),
      distinguish: Value(distinguish),
      typeSpring: Value(typeSpring),
      typeSummer: Value(typeSummer),
      typeAutumn: Value(typeAutumn),
      typeWinter: Value(typeWinter),
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
      seedlessVarieties: serializer.fromJson<String>(json['seedlessVarieties']),
      priceRange: serializer.fromJson<String>(json['priceRange']),
      nutrients: serializer.fromJson<String>(json['nutrients']),
      nutrientEfficacy: serializer.fromJson<String>(json['nutrientEfficacy']),
      imageFileName: serializer.fromJson<String>(json['imageFileName']),
      backgroundImage: serializer.fromJson<String>(json['backgroundImage']),
      distinguish: serializer.fromJson<String>(json['distinguish']),
      typeSpring: serializer.fromJson<bool>(json['typeSpring']),
      typeSummer: serializer.fromJson<bool>(json['typeSummer']),
      typeAutumn: serializer.fromJson<bool>(json['typeAutumn']),
      typeWinter: serializer.fromJson<bool>(json['typeWinter']),
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
      'seedlessVarieties': serializer.toJson<String>(seedlessVarieties),
      'priceRange': serializer.toJson<String>(priceRange),
      'nutrients': serializer.toJson<String>(nutrients),
      'nutrientEfficacy': serializer.toJson<String>(nutrientEfficacy),
      'imageFileName': serializer.toJson<String>(imageFileName),
      'backgroundImage': serializer.toJson<String>(backgroundImage),
      'distinguish': serializer.toJson<String>(distinguish),
      'typeSpring': serializer.toJson<bool>(typeSpring),
      'typeSummer': serializer.toJson<bool>(typeSummer),
      'typeAutumn': serializer.toJson<bool>(typeAutumn),
      'typeWinter': serializer.toJson<bool>(typeWinter),
    };
  }

  Fruit copyWith(
          {int? id,
          String? name,
          String? famousArea,
          String? season,
          String? famousBreed,
          String? seedlessVarieties,
          String? priceRange,
          String? nutrients,
          String? nutrientEfficacy,
          String? imageFileName,
          String? backgroundImage,
          String? distinguish,
          bool? typeSpring,
          bool? typeSummer,
          bool? typeAutumn,
          bool? typeWinter}) =>
      Fruit(
        id: id ?? this.id,
        name: name ?? this.name,
        famousArea: famousArea ?? this.famousArea,
        season: season ?? this.season,
        famousBreed: famousBreed ?? this.famousBreed,
        seedlessVarieties: seedlessVarieties ?? this.seedlessVarieties,
        priceRange: priceRange ?? this.priceRange,
        nutrients: nutrients ?? this.nutrients,
        nutrientEfficacy: nutrientEfficacy ?? this.nutrientEfficacy,
        imageFileName: imageFileName ?? this.imageFileName,
        backgroundImage: backgroundImage ?? this.backgroundImage,
        distinguish: distinguish ?? this.distinguish,
        typeSpring: typeSpring ?? this.typeSpring,
        typeSummer: typeSummer ?? this.typeSummer,
        typeAutumn: typeAutumn ?? this.typeAutumn,
        typeWinter: typeWinter ?? this.typeWinter,
      );
  @override
  String toString() {
    return (StringBuffer('Fruit(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('famousArea: $famousArea, ')
          ..write('season: $season, ')
          ..write('famousBreed: $famousBreed, ')
          ..write('seedlessVarieties: $seedlessVarieties, ')
          ..write('priceRange: $priceRange, ')
          ..write('nutrients: $nutrients, ')
          ..write('nutrientEfficacy: $nutrientEfficacy, ')
          ..write('imageFileName: $imageFileName, ')
          ..write('backgroundImage: $backgroundImage, ')
          ..write('distinguish: $distinguish, ')
          ..write('typeSpring: $typeSpring, ')
          ..write('typeSummer: $typeSummer, ')
          ..write('typeAutumn: $typeAutumn, ')
          ..write('typeWinter: $typeWinter')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      famousArea,
      season,
      famousBreed,
      seedlessVarieties,
      priceRange,
      nutrients,
      nutrientEfficacy,
      imageFileName,
      backgroundImage,
      distinguish,
      typeSpring,
      typeSummer,
      typeAutumn,
      typeWinter);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Fruit &&
          other.id == this.id &&
          other.name == this.name &&
          other.famousArea == this.famousArea &&
          other.season == this.season &&
          other.famousBreed == this.famousBreed &&
          other.seedlessVarieties == this.seedlessVarieties &&
          other.priceRange == this.priceRange &&
          other.nutrients == this.nutrients &&
          other.nutrientEfficacy == this.nutrientEfficacy &&
          other.imageFileName == this.imageFileName &&
          other.backgroundImage == this.backgroundImage &&
          other.distinguish == this.distinguish &&
          other.typeSpring == this.typeSpring &&
          other.typeSummer == this.typeSummer &&
          other.typeAutumn == this.typeAutumn &&
          other.typeWinter == this.typeWinter);
}

class FruitsCompanion extends UpdateCompanion<Fruit> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> famousArea;
  final Value<String> season;
  final Value<String> famousBreed;
  final Value<String> seedlessVarieties;
  final Value<String> priceRange;
  final Value<String> nutrients;
  final Value<String> nutrientEfficacy;
  final Value<String> imageFileName;
  final Value<String> backgroundImage;
  final Value<String> distinguish;
  final Value<bool> typeSpring;
  final Value<bool> typeSummer;
  final Value<bool> typeAutumn;
  final Value<bool> typeWinter;
  final Value<int> rowid;
  const FruitsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.famousArea = const Value.absent(),
    this.season = const Value.absent(),
    this.famousBreed = const Value.absent(),
    this.seedlessVarieties = const Value.absent(),
    this.priceRange = const Value.absent(),
    this.nutrients = const Value.absent(),
    this.nutrientEfficacy = const Value.absent(),
    this.imageFileName = const Value.absent(),
    this.backgroundImage = const Value.absent(),
    this.distinguish = const Value.absent(),
    this.typeSpring = const Value.absent(),
    this.typeSummer = const Value.absent(),
    this.typeAutumn = const Value.absent(),
    this.typeWinter = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FruitsCompanion.insert({
    required int id,
    required String name,
    required String famousArea,
    required String season,
    required String famousBreed,
    required String seedlessVarieties,
    required String priceRange,
    required String nutrients,
    required String nutrientEfficacy,
    required String imageFileName,
    required String backgroundImage,
    required String distinguish,
    this.typeSpring = const Value.absent(),
    this.typeSummer = const Value.absent(),
    this.typeAutumn = const Value.absent(),
    this.typeWinter = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        famousArea = Value(famousArea),
        season = Value(season),
        famousBreed = Value(famousBreed),
        seedlessVarieties = Value(seedlessVarieties),
        priceRange = Value(priceRange),
        nutrients = Value(nutrients),
        nutrientEfficacy = Value(nutrientEfficacy),
        imageFileName = Value(imageFileName),
        backgroundImage = Value(backgroundImage),
        distinguish = Value(distinguish);
  static Insertable<Fruit> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? famousArea,
    Expression<String>? season,
    Expression<String>? famousBreed,
    Expression<String>? seedlessVarieties,
    Expression<String>? priceRange,
    Expression<String>? nutrients,
    Expression<String>? nutrientEfficacy,
    Expression<String>? imageFileName,
    Expression<String>? backgroundImage,
    Expression<String>? distinguish,
    Expression<bool>? typeSpring,
    Expression<bool>? typeSummer,
    Expression<bool>? typeAutumn,
    Expression<bool>? typeWinter,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (famousArea != null) 'famous_area': famousArea,
      if (season != null) 'season': season,
      if (famousBreed != null) 'famous_breed': famousBreed,
      if (seedlessVarieties != null) 'seedless_varieties': seedlessVarieties,
      if (priceRange != null) 'price_range': priceRange,
      if (nutrients != null) 'nutrients': nutrients,
      if (nutrientEfficacy != null) 'nutrient_efficacy': nutrientEfficacy,
      if (imageFileName != null) 'image_file_name': imageFileName,
      if (backgroundImage != null) 'background_image': backgroundImage,
      if (distinguish != null) 'distinguish': distinguish,
      if (typeSpring != null) 'type_spring': typeSpring,
      if (typeSummer != null) 'type_summer': typeSummer,
      if (typeAutumn != null) 'type_autumn': typeAutumn,
      if (typeWinter != null) 'type_winter': typeWinter,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FruitsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? famousArea,
      Value<String>? season,
      Value<String>? famousBreed,
      Value<String>? seedlessVarieties,
      Value<String>? priceRange,
      Value<String>? nutrients,
      Value<String>? nutrientEfficacy,
      Value<String>? imageFileName,
      Value<String>? backgroundImage,
      Value<String>? distinguish,
      Value<bool>? typeSpring,
      Value<bool>? typeSummer,
      Value<bool>? typeAutumn,
      Value<bool>? typeWinter,
      Value<int>? rowid}) {
    return FruitsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      famousArea: famousArea ?? this.famousArea,
      season: season ?? this.season,
      famousBreed: famousBreed ?? this.famousBreed,
      seedlessVarieties: seedlessVarieties ?? this.seedlessVarieties,
      priceRange: priceRange ?? this.priceRange,
      nutrients: nutrients ?? this.nutrients,
      nutrientEfficacy: nutrientEfficacy ?? this.nutrientEfficacy,
      imageFileName: imageFileName ?? this.imageFileName,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      distinguish: distinguish ?? this.distinguish,
      typeSpring: typeSpring ?? this.typeSpring,
      typeSummer: typeSummer ?? this.typeSummer,
      typeAutumn: typeAutumn ?? this.typeAutumn,
      typeWinter: typeWinter ?? this.typeWinter,
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
    if (seedlessVarieties.present) {
      map['seedless_varieties'] = Variable<String>(seedlessVarieties.value);
    }
    if (priceRange.present) {
      map['price_range'] = Variable<String>(priceRange.value);
    }
    if (nutrients.present) {
      map['nutrients'] = Variable<String>(nutrients.value);
    }
    if (nutrientEfficacy.present) {
      map['nutrient_efficacy'] = Variable<String>(nutrientEfficacy.value);
    }
    if (imageFileName.present) {
      map['image_file_name'] = Variable<String>(imageFileName.value);
    }
    if (backgroundImage.present) {
      map['background_image'] = Variable<String>(backgroundImage.value);
    }
    if (distinguish.present) {
      map['distinguish'] = Variable<String>(distinguish.value);
    }
    if (typeSpring.present) {
      map['type_spring'] = Variable<bool>(typeSpring.value);
    }
    if (typeSummer.present) {
      map['type_summer'] = Variable<bool>(typeSummer.value);
    }
    if (typeAutumn.present) {
      map['type_autumn'] = Variable<bool>(typeAutumn.value);
    }
    if (typeWinter.present) {
      map['type_winter'] = Variable<bool>(typeWinter.value);
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
          ..write('seedlessVarieties: $seedlessVarieties, ')
          ..write('priceRange: $priceRange, ')
          ..write('nutrients: $nutrients, ')
          ..write('nutrientEfficacy: $nutrientEfficacy, ')
          ..write('imageFileName: $imageFileName, ')
          ..write('backgroundImage: $backgroundImage, ')
          ..write('distinguish: $distinguish, ')
          ..write('typeSpring: $typeSpring, ')
          ..write('typeSummer: $typeSummer, ')
          ..write('typeAutumn: $typeAutumn, ')
          ..write('typeWinter: $typeWinter, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QuestionsTable extends Questions
    with TableInfo<$QuestionsTable, Question> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _questionMeta =
      const VerificationMeta('question');
  @override
  late final GeneratedColumn<String> question = GeneratedColumn<String>(
      'question', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _answerMeta = const VerificationMeta('answer');
  @override
  late final GeneratedColumn<String> answer = GeneratedColumn<String>(
      'answer', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _choice1Meta =
      const VerificationMeta('choice1');
  @override
  late final GeneratedColumn<String> choice1 = GeneratedColumn<String>(
      'choice1', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _choice2Meta =
      const VerificationMeta('choice2');
  @override
  late final GeneratedColumn<String> choice2 = GeneratedColumn<String>(
      'choice2', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _choice3Meta =
      const VerificationMeta('choice3');
  @override
  late final GeneratedColumn<String> choice3 = GeneratedColumn<String>(
      'choice3', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _explanationMeta =
      const VerificationMeta('explanation');
  @override
  late final GeneratedColumn<String> explanation = GeneratedColumn<String>(
      'explanation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, question, answer, choice1, choice2, choice3, explanation];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'questions';
  @override
  VerificationContext validateIntegrity(Insertable<Question> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('question')) {
      context.handle(_questionMeta,
          question.isAcceptableOrUnknown(data['question']!, _questionMeta));
    } else if (isInserting) {
      context.missing(_questionMeta);
    }
    if (data.containsKey('answer')) {
      context.handle(_answerMeta,
          answer.isAcceptableOrUnknown(data['answer']!, _answerMeta));
    } else if (isInserting) {
      context.missing(_answerMeta);
    }
    if (data.containsKey('choice1')) {
      context.handle(_choice1Meta,
          choice1.isAcceptableOrUnknown(data['choice1']!, _choice1Meta));
    } else if (isInserting) {
      context.missing(_choice1Meta);
    }
    if (data.containsKey('choice2')) {
      context.handle(_choice2Meta,
          choice2.isAcceptableOrUnknown(data['choice2']!, _choice2Meta));
    } else if (isInserting) {
      context.missing(_choice2Meta);
    }
    if (data.containsKey('choice3')) {
      context.handle(_choice3Meta,
          choice3.isAcceptableOrUnknown(data['choice3']!, _choice3Meta));
    } else if (isInserting) {
      context.missing(_choice3Meta);
    }
    if (data.containsKey('explanation')) {
      context.handle(
          _explanationMeta,
          explanation.isAcceptableOrUnknown(
              data['explanation']!, _explanationMeta));
    } else if (isInserting) {
      context.missing(_explanationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Question map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Question(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      question: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}question'])!,
      answer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}answer'])!,
      choice1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice1'])!,
      choice2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice2'])!,
      choice3: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice3'])!,
      explanation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}explanation'])!,
    );
  }

  @override
  $QuestionsTable createAlias(String alias) {
    return $QuestionsTable(attachedDatabase, alias);
  }
}

class Question extends DataClass implements Insertable<Question> {
  final int id;
  final String question;
  final String answer;
  final String choice1;
  final String choice2;
  final String choice3;
  final String explanation;
  const Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.choice1,
      required this.choice2,
      required this.choice3,
      required this.explanation});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['question'] = Variable<String>(question);
    map['answer'] = Variable<String>(answer);
    map['choice1'] = Variable<String>(choice1);
    map['choice2'] = Variable<String>(choice2);
    map['choice3'] = Variable<String>(choice3);
    map['explanation'] = Variable<String>(explanation);
    return map;
  }

  QuestionsCompanion toCompanion(bool nullToAbsent) {
    return QuestionsCompanion(
      id: Value(id),
      question: Value(question),
      answer: Value(answer),
      choice1: Value(choice1),
      choice2: Value(choice2),
      choice3: Value(choice3),
      explanation: Value(explanation),
    );
  }

  factory Question.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Question(
      id: serializer.fromJson<int>(json['id']),
      question: serializer.fromJson<String>(json['question']),
      answer: serializer.fromJson<String>(json['answer']),
      choice1: serializer.fromJson<String>(json['choice1']),
      choice2: serializer.fromJson<String>(json['choice2']),
      choice3: serializer.fromJson<String>(json['choice3']),
      explanation: serializer.fromJson<String>(json['explanation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'question': serializer.toJson<String>(question),
      'answer': serializer.toJson<String>(answer),
      'choice1': serializer.toJson<String>(choice1),
      'choice2': serializer.toJson<String>(choice2),
      'choice3': serializer.toJson<String>(choice3),
      'explanation': serializer.toJson<String>(explanation),
    };
  }

  Question copyWith(
          {int? id,
          String? question,
          String? answer,
          String? choice1,
          String? choice2,
          String? choice3,
          String? explanation}) =>
      Question(
        id: id ?? this.id,
        question: question ?? this.question,
        answer: answer ?? this.answer,
        choice1: choice1 ?? this.choice1,
        choice2: choice2 ?? this.choice2,
        choice3: choice3 ?? this.choice3,
        explanation: explanation ?? this.explanation,
      );
  @override
  String toString() {
    return (StringBuffer('Question(')
          ..write('id: $id, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('choice1: $choice1, ')
          ..write('choice2: $choice2, ')
          ..write('choice3: $choice3, ')
          ..write('explanation: $explanation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, question, answer, choice1, choice2, choice3, explanation);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Question &&
          other.id == this.id &&
          other.question == this.question &&
          other.answer == this.answer &&
          other.choice1 == this.choice1 &&
          other.choice2 == this.choice2 &&
          other.choice3 == this.choice3 &&
          other.explanation == this.explanation);
}

class QuestionsCompanion extends UpdateCompanion<Question> {
  final Value<int> id;
  final Value<String> question;
  final Value<String> answer;
  final Value<String> choice1;
  final Value<String> choice2;
  final Value<String> choice3;
  final Value<String> explanation;
  final Value<int> rowid;
  const QuestionsCompanion({
    this.id = const Value.absent(),
    this.question = const Value.absent(),
    this.answer = const Value.absent(),
    this.choice1 = const Value.absent(),
    this.choice2 = const Value.absent(),
    this.choice3 = const Value.absent(),
    this.explanation = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuestionsCompanion.insert({
    required int id,
    required String question,
    required String answer,
    required String choice1,
    required String choice2,
    required String choice3,
    required String explanation,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        question = Value(question),
        answer = Value(answer),
        choice1 = Value(choice1),
        choice2 = Value(choice2),
        choice3 = Value(choice3),
        explanation = Value(explanation);
  static Insertable<Question> custom({
    Expression<int>? id,
    Expression<String>? question,
    Expression<String>? answer,
    Expression<String>? choice1,
    Expression<String>? choice2,
    Expression<String>? choice3,
    Expression<String>? explanation,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (question != null) 'question': question,
      if (answer != null) 'answer': answer,
      if (choice1 != null) 'choice1': choice1,
      if (choice2 != null) 'choice2': choice2,
      if (choice3 != null) 'choice3': choice3,
      if (explanation != null) 'explanation': explanation,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuestionsCompanion copyWith(
      {Value<int>? id,
      Value<String>? question,
      Value<String>? answer,
      Value<String>? choice1,
      Value<String>? choice2,
      Value<String>? choice3,
      Value<String>? explanation,
      Value<int>? rowid}) {
    return QuestionsCompanion(
      id: id ?? this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      choice1: choice1 ?? this.choice1,
      choice2: choice2 ?? this.choice2,
      choice3: choice3 ?? this.choice3,
      explanation: explanation ?? this.explanation,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (question.present) {
      map['question'] = Variable<String>(question.value);
    }
    if (answer.present) {
      map['answer'] = Variable<String>(answer.value);
    }
    if (choice1.present) {
      map['choice1'] = Variable<String>(choice1.value);
    }
    if (choice2.present) {
      map['choice2'] = Variable<String>(choice2.value);
    }
    if (choice3.present) {
      map['choice3'] = Variable<String>(choice3.value);
    }
    if (explanation.present) {
      map['explanation'] = Variable<String>(explanation.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionsCompanion(')
          ..write('id: $id, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('choice1: $choice1, ')
          ..write('choice2: $choice2, ')
          ..write('choice3: $choice3, ')
          ..write('explanation: $explanation, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $FruitsTable fruits = $FruitsTable(this);
  late final $QuestionsTable questions = $QuestionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [fruits, questions];
}
