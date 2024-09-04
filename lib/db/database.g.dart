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
  static const VerificationMeta _nameEnMeta = const VerificationMeta('nameEn');
  @override
  late final GeneratedColumn<String> nameEn = GeneratedColumn<String>(
      'name_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _famousAreaMeta =
      const VerificationMeta('famousArea');
  @override
  late final GeneratedColumn<String> famousArea = GeneratedColumn<String>(
      'famous_area', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _famousAreaEnMeta =
      const VerificationMeta('famousAreaEn');
  @override
  late final GeneratedColumn<String> famousAreaEn = GeneratedColumn<String>(
      'famous_area_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _seasonMeta = const VerificationMeta('season');
  @override
  late final GeneratedColumn<String> season = GeneratedColumn<String>(
      'season', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _seasonEnMeta =
      const VerificationMeta('seasonEn');
  @override
  late final GeneratedColumn<String> seasonEn = GeneratedColumn<String>(
      'season_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _famousBreedMeta =
      const VerificationMeta('famousBreed');
  @override
  late final GeneratedColumn<String> famousBreed = GeneratedColumn<String>(
      'famous_breed', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _famousBreedEnMeta =
      const VerificationMeta('famousBreedEn');
  @override
  late final GeneratedColumn<String> famousBreedEn = GeneratedColumn<String>(
      'famous_breed_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sweetBreedMeta =
      const VerificationMeta('sweetBreed');
  @override
  late final GeneratedColumn<String> sweetBreed = GeneratedColumn<String>(
      'sweet_breed', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sweetBreedEnMeta =
      const VerificationMeta('sweetBreedEn');
  @override
  late final GeneratedColumn<String> sweetBreedEn = GeneratedColumn<String>(
      'sweet_breed_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _seedlessVarietiesMeta =
      const VerificationMeta('seedlessVarieties');
  @override
  late final GeneratedColumn<String> seedlessVarieties =
      GeneratedColumn<String>('seedless_varieties', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _seedlessVarietiesEnMeta =
      const VerificationMeta('seedlessVarietiesEn');
  @override
  late final GeneratedColumn<String> seedlessVarietiesEn =
      GeneratedColumn<String>('seedless_varieties_en', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceRangeMeta =
      const VerificationMeta('priceRange');
  @override
  late final GeneratedColumn<String> priceRange = GeneratedColumn<String>(
      'price_range', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceRangeEnMeta =
      const VerificationMeta('priceRangeEn');
  @override
  late final GeneratedColumn<String> priceRangeEn = GeneratedColumn<String>(
      'price_range_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nutrientsMeta =
      const VerificationMeta('nutrients');
  @override
  late final GeneratedColumn<String> nutrients = GeneratedColumn<String>(
      'nutrients', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nutrientsEnMeta =
      const VerificationMeta('nutrientsEn');
  @override
  late final GeneratedColumn<String> nutrientsEn = GeneratedColumn<String>(
      'nutrients_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nutrientEfficacyMeta =
      const VerificationMeta('nutrientEfficacy');
  @override
  late final GeneratedColumn<String> nutrientEfficacy = GeneratedColumn<String>(
      'nutrient_efficacy', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nutrientEfficacyEnMeta =
      const VerificationMeta('nutrientEfficacyEn');
  @override
  late final GeneratedColumn<String> nutrientEfficacyEn =
      GeneratedColumn<String>('nutrient_efficacy_en', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
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
  static const VerificationMeta _distinguishEnMeta =
      const VerificationMeta('distinguishEn');
  @override
  late final GeneratedColumn<String> distinguishEn = GeneratedColumn<String>(
      'distinguish_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
        nameEn,
        famousArea,
        famousAreaEn,
        season,
        seasonEn,
        famousBreed,
        famousBreedEn,
        sweetBreed,
        sweetBreedEn,
        seedlessVarieties,
        seedlessVarietiesEn,
        priceRange,
        priceRangeEn,
        nutrients,
        nutrientsEn,
        nutrientEfficacy,
        nutrientEfficacyEn,
        imageFileName,
        backgroundImage,
        distinguish,
        distinguishEn,
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
    if (data.containsKey('name_en')) {
      context.handle(_nameEnMeta,
          nameEn.isAcceptableOrUnknown(data['name_en']!, _nameEnMeta));
    }
    if (data.containsKey('famous_area')) {
      context.handle(
          _famousAreaMeta,
          famousArea.isAcceptableOrUnknown(
              data['famous_area']!, _famousAreaMeta));
    } else if (isInserting) {
      context.missing(_famousAreaMeta);
    }
    if (data.containsKey('famous_area_en')) {
      context.handle(
          _famousAreaEnMeta,
          famousAreaEn.isAcceptableOrUnknown(
              data['famous_area_en']!, _famousAreaEnMeta));
    }
    if (data.containsKey('season')) {
      context.handle(_seasonMeta,
          season.isAcceptableOrUnknown(data['season']!, _seasonMeta));
    } else if (isInserting) {
      context.missing(_seasonMeta);
    }
    if (data.containsKey('season_en')) {
      context.handle(_seasonEnMeta,
          seasonEn.isAcceptableOrUnknown(data['season_en']!, _seasonEnMeta));
    }
    if (data.containsKey('famous_breed')) {
      context.handle(
          _famousBreedMeta,
          famousBreed.isAcceptableOrUnknown(
              data['famous_breed']!, _famousBreedMeta));
    } else if (isInserting) {
      context.missing(_famousBreedMeta);
    }
    if (data.containsKey('famous_breed_en')) {
      context.handle(
          _famousBreedEnMeta,
          famousBreedEn.isAcceptableOrUnknown(
              data['famous_breed_en']!, _famousBreedEnMeta));
    }
    if (data.containsKey('sweet_breed')) {
      context.handle(
          _sweetBreedMeta,
          sweetBreed.isAcceptableOrUnknown(
              data['sweet_breed']!, _sweetBreedMeta));
    } else if (isInserting) {
      context.missing(_sweetBreedMeta);
    }
    if (data.containsKey('sweet_breed_en')) {
      context.handle(
          _sweetBreedEnMeta,
          sweetBreedEn.isAcceptableOrUnknown(
              data['sweet_breed_en']!, _sweetBreedEnMeta));
    }
    if (data.containsKey('seedless_varieties')) {
      context.handle(
          _seedlessVarietiesMeta,
          seedlessVarieties.isAcceptableOrUnknown(
              data['seedless_varieties']!, _seedlessVarietiesMeta));
    } else if (isInserting) {
      context.missing(_seedlessVarietiesMeta);
    }
    if (data.containsKey('seedless_varieties_en')) {
      context.handle(
          _seedlessVarietiesEnMeta,
          seedlessVarietiesEn.isAcceptableOrUnknown(
              data['seedless_varieties_en']!, _seedlessVarietiesEnMeta));
    }
    if (data.containsKey('price_range')) {
      context.handle(
          _priceRangeMeta,
          priceRange.isAcceptableOrUnknown(
              data['price_range']!, _priceRangeMeta));
    } else if (isInserting) {
      context.missing(_priceRangeMeta);
    }
    if (data.containsKey('price_range_en')) {
      context.handle(
          _priceRangeEnMeta,
          priceRangeEn.isAcceptableOrUnknown(
              data['price_range_en']!, _priceRangeEnMeta));
    }
    if (data.containsKey('nutrients')) {
      context.handle(_nutrientsMeta,
          nutrients.isAcceptableOrUnknown(data['nutrients']!, _nutrientsMeta));
    } else if (isInserting) {
      context.missing(_nutrientsMeta);
    }
    if (data.containsKey('nutrients_en')) {
      context.handle(
          _nutrientsEnMeta,
          nutrientsEn.isAcceptableOrUnknown(
              data['nutrients_en']!, _nutrientsEnMeta));
    }
    if (data.containsKey('nutrient_efficacy')) {
      context.handle(
          _nutrientEfficacyMeta,
          nutrientEfficacy.isAcceptableOrUnknown(
              data['nutrient_efficacy']!, _nutrientEfficacyMeta));
    } else if (isInserting) {
      context.missing(_nutrientEfficacyMeta);
    }
    if (data.containsKey('nutrient_efficacy_en')) {
      context.handle(
          _nutrientEfficacyEnMeta,
          nutrientEfficacyEn.isAcceptableOrUnknown(
              data['nutrient_efficacy_en']!, _nutrientEfficacyEnMeta));
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
    if (data.containsKey('distinguish_en')) {
      context.handle(
          _distinguishEnMeta,
          distinguishEn.isAcceptableOrUnknown(
              data['distinguish_en']!, _distinguishEnMeta));
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
      nameEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_en']),
      famousArea: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}famous_area'])!,
      famousAreaEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}famous_area_en']),
      season: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}season'])!,
      seasonEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}season_en']),
      famousBreed: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}famous_breed'])!,
      famousBreedEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}famous_breed_en']),
      sweetBreed: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sweet_breed'])!,
      sweetBreedEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sweet_breed_en']),
      seedlessVarieties: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}seedless_varieties'])!,
      seedlessVarietiesEn: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}seedless_varieties_en']),
      priceRange: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_range'])!,
      priceRangeEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_range_en']),
      nutrients: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nutrients'])!,
      nutrientsEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nutrients_en']),
      nutrientEfficacy: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}nutrient_efficacy'])!,
      nutrientEfficacyEn: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}nutrient_efficacy_en']),
      imageFileName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}image_file_name'])!,
      backgroundImage: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}background_image'])!,
      distinguish: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}distinguish'])!,
      distinguishEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}distinguish_en']),
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
  final String? nameEn;
  final String famousArea;
  final String? famousAreaEn;
  final String season;
  final String? seasonEn;
  final String famousBreed;
  final String? famousBreedEn;
  final String sweetBreed;
  final String? sweetBreedEn;
  final String seedlessVarieties;
  final String? seedlessVarietiesEn;
  final String priceRange;
  final String? priceRangeEn;
  final String nutrients;
  final String? nutrientsEn;
  final String nutrientEfficacy;
  final String? nutrientEfficacyEn;
  final String imageFileName;
  final String backgroundImage;
  final String distinguish;
  final String? distinguishEn;
  final bool typeSpring;
  final bool typeSummer;
  final bool typeAutumn;
  final bool typeWinter;
  const Fruit(
      {required this.id,
      required this.name,
      this.nameEn,
      required this.famousArea,
      this.famousAreaEn,
      required this.season,
      this.seasonEn,
      required this.famousBreed,
      this.famousBreedEn,
      required this.sweetBreed,
      this.sweetBreedEn,
      required this.seedlessVarieties,
      this.seedlessVarietiesEn,
      required this.priceRange,
      this.priceRangeEn,
      required this.nutrients,
      this.nutrientsEn,
      required this.nutrientEfficacy,
      this.nutrientEfficacyEn,
      required this.imageFileName,
      required this.backgroundImage,
      required this.distinguish,
      this.distinguishEn,
      required this.typeSpring,
      required this.typeSummer,
      required this.typeAutumn,
      required this.typeWinter});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || nameEn != null) {
      map['name_en'] = Variable<String>(nameEn);
    }
    map['famous_area'] = Variable<String>(famousArea);
    if (!nullToAbsent || famousAreaEn != null) {
      map['famous_area_en'] = Variable<String>(famousAreaEn);
    }
    map['season'] = Variable<String>(season);
    if (!nullToAbsent || seasonEn != null) {
      map['season_en'] = Variable<String>(seasonEn);
    }
    map['famous_breed'] = Variable<String>(famousBreed);
    if (!nullToAbsent || famousBreedEn != null) {
      map['famous_breed_en'] = Variable<String>(famousBreedEn);
    }
    map['sweet_breed'] = Variable<String>(sweetBreed);
    if (!nullToAbsent || sweetBreedEn != null) {
      map['sweet_breed_en'] = Variable<String>(sweetBreedEn);
    }
    map['seedless_varieties'] = Variable<String>(seedlessVarieties);
    if (!nullToAbsent || seedlessVarietiesEn != null) {
      map['seedless_varieties_en'] = Variable<String>(seedlessVarietiesEn);
    }
    map['price_range'] = Variable<String>(priceRange);
    if (!nullToAbsent || priceRangeEn != null) {
      map['price_range_en'] = Variable<String>(priceRangeEn);
    }
    map['nutrients'] = Variable<String>(nutrients);
    if (!nullToAbsent || nutrientsEn != null) {
      map['nutrients_en'] = Variable<String>(nutrientsEn);
    }
    map['nutrient_efficacy'] = Variable<String>(nutrientEfficacy);
    if (!nullToAbsent || nutrientEfficacyEn != null) {
      map['nutrient_efficacy_en'] = Variable<String>(nutrientEfficacyEn);
    }
    map['image_file_name'] = Variable<String>(imageFileName);
    map['background_image'] = Variable<String>(backgroundImage);
    map['distinguish'] = Variable<String>(distinguish);
    if (!nullToAbsent || distinguishEn != null) {
      map['distinguish_en'] = Variable<String>(distinguishEn);
    }
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
      nameEn:
          nameEn == null && nullToAbsent ? const Value.absent() : Value(nameEn),
      famousArea: Value(famousArea),
      famousAreaEn: famousAreaEn == null && nullToAbsent
          ? const Value.absent()
          : Value(famousAreaEn),
      season: Value(season),
      seasonEn: seasonEn == null && nullToAbsent
          ? const Value.absent()
          : Value(seasonEn),
      famousBreed: Value(famousBreed),
      famousBreedEn: famousBreedEn == null && nullToAbsent
          ? const Value.absent()
          : Value(famousBreedEn),
      sweetBreed: Value(sweetBreed),
      sweetBreedEn: sweetBreedEn == null && nullToAbsent
          ? const Value.absent()
          : Value(sweetBreedEn),
      seedlessVarieties: Value(seedlessVarieties),
      seedlessVarietiesEn: seedlessVarietiesEn == null && nullToAbsent
          ? const Value.absent()
          : Value(seedlessVarietiesEn),
      priceRange: Value(priceRange),
      priceRangeEn: priceRangeEn == null && nullToAbsent
          ? const Value.absent()
          : Value(priceRangeEn),
      nutrients: Value(nutrients),
      nutrientsEn: nutrientsEn == null && nullToAbsent
          ? const Value.absent()
          : Value(nutrientsEn),
      nutrientEfficacy: Value(nutrientEfficacy),
      nutrientEfficacyEn: nutrientEfficacyEn == null && nullToAbsent
          ? const Value.absent()
          : Value(nutrientEfficacyEn),
      imageFileName: Value(imageFileName),
      backgroundImage: Value(backgroundImage),
      distinguish: Value(distinguish),
      distinguishEn: distinguishEn == null && nullToAbsent
          ? const Value.absent()
          : Value(distinguishEn),
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
      nameEn: serializer.fromJson<String?>(json['nameEn']),
      famousArea: serializer.fromJson<String>(json['famousArea']),
      famousAreaEn: serializer.fromJson<String?>(json['famousAreaEn']),
      season: serializer.fromJson<String>(json['season']),
      seasonEn: serializer.fromJson<String?>(json['seasonEn']),
      famousBreed: serializer.fromJson<String>(json['famousBreed']),
      famousBreedEn: serializer.fromJson<String?>(json['famousBreedEn']),
      sweetBreed: serializer.fromJson<String>(json['sweetBreed']),
      sweetBreedEn: serializer.fromJson<String?>(json['sweetBreedEn']),
      seedlessVarieties: serializer.fromJson<String>(json['seedlessVarieties']),
      seedlessVarietiesEn:
          serializer.fromJson<String?>(json['seedlessVarietiesEn']),
      priceRange: serializer.fromJson<String>(json['priceRange']),
      priceRangeEn: serializer.fromJson<String?>(json['priceRangeEn']),
      nutrients: serializer.fromJson<String>(json['nutrients']),
      nutrientsEn: serializer.fromJson<String?>(json['nutrientsEn']),
      nutrientEfficacy: serializer.fromJson<String>(json['nutrientEfficacy']),
      nutrientEfficacyEn:
          serializer.fromJson<String?>(json['nutrientEfficacyEn']),
      imageFileName: serializer.fromJson<String>(json['imageFileName']),
      backgroundImage: serializer.fromJson<String>(json['backgroundImage']),
      distinguish: serializer.fromJson<String>(json['distinguish']),
      distinguishEn: serializer.fromJson<String?>(json['distinguishEn']),
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
      'nameEn': serializer.toJson<String?>(nameEn),
      'famousArea': serializer.toJson<String>(famousArea),
      'famousAreaEn': serializer.toJson<String?>(famousAreaEn),
      'season': serializer.toJson<String>(season),
      'seasonEn': serializer.toJson<String?>(seasonEn),
      'famousBreed': serializer.toJson<String>(famousBreed),
      'famousBreedEn': serializer.toJson<String?>(famousBreedEn),
      'sweetBreed': serializer.toJson<String>(sweetBreed),
      'sweetBreedEn': serializer.toJson<String?>(sweetBreedEn),
      'seedlessVarieties': serializer.toJson<String>(seedlessVarieties),
      'seedlessVarietiesEn': serializer.toJson<String?>(seedlessVarietiesEn),
      'priceRange': serializer.toJson<String>(priceRange),
      'priceRangeEn': serializer.toJson<String?>(priceRangeEn),
      'nutrients': serializer.toJson<String>(nutrients),
      'nutrientsEn': serializer.toJson<String?>(nutrientsEn),
      'nutrientEfficacy': serializer.toJson<String>(nutrientEfficacy),
      'nutrientEfficacyEn': serializer.toJson<String?>(nutrientEfficacyEn),
      'imageFileName': serializer.toJson<String>(imageFileName),
      'backgroundImage': serializer.toJson<String>(backgroundImage),
      'distinguish': serializer.toJson<String>(distinguish),
      'distinguishEn': serializer.toJson<String?>(distinguishEn),
      'typeSpring': serializer.toJson<bool>(typeSpring),
      'typeSummer': serializer.toJson<bool>(typeSummer),
      'typeAutumn': serializer.toJson<bool>(typeAutumn),
      'typeWinter': serializer.toJson<bool>(typeWinter),
    };
  }

  Fruit copyWith(
          {int? id,
          String? name,
          Value<String?> nameEn = const Value.absent(),
          String? famousArea,
          Value<String?> famousAreaEn = const Value.absent(),
          String? season,
          Value<String?> seasonEn = const Value.absent(),
          String? famousBreed,
          Value<String?> famousBreedEn = const Value.absent(),
          String? sweetBreed,
          Value<String?> sweetBreedEn = const Value.absent(),
          String? seedlessVarieties,
          Value<String?> seedlessVarietiesEn = const Value.absent(),
          String? priceRange,
          Value<String?> priceRangeEn = const Value.absent(),
          String? nutrients,
          Value<String?> nutrientsEn = const Value.absent(),
          String? nutrientEfficacy,
          Value<String?> nutrientEfficacyEn = const Value.absent(),
          String? imageFileName,
          String? backgroundImage,
          String? distinguish,
          Value<String?> distinguishEn = const Value.absent(),
          bool? typeSpring,
          bool? typeSummer,
          bool? typeAutumn,
          bool? typeWinter}) =>
      Fruit(
        id: id ?? this.id,
        name: name ?? this.name,
        nameEn: nameEn.present ? nameEn.value : this.nameEn,
        famousArea: famousArea ?? this.famousArea,
        famousAreaEn:
            famousAreaEn.present ? famousAreaEn.value : this.famousAreaEn,
        season: season ?? this.season,
        seasonEn: seasonEn.present ? seasonEn.value : this.seasonEn,
        famousBreed: famousBreed ?? this.famousBreed,
        famousBreedEn:
            famousBreedEn.present ? famousBreedEn.value : this.famousBreedEn,
        sweetBreed: sweetBreed ?? this.sweetBreed,
        sweetBreedEn:
            sweetBreedEn.present ? sweetBreedEn.value : this.sweetBreedEn,
        seedlessVarieties: seedlessVarieties ?? this.seedlessVarieties,
        seedlessVarietiesEn: seedlessVarietiesEn.present
            ? seedlessVarietiesEn.value
            : this.seedlessVarietiesEn,
        priceRange: priceRange ?? this.priceRange,
        priceRangeEn:
            priceRangeEn.present ? priceRangeEn.value : this.priceRangeEn,
        nutrients: nutrients ?? this.nutrients,
        nutrientsEn: nutrientsEn.present ? nutrientsEn.value : this.nutrientsEn,
        nutrientEfficacy: nutrientEfficacy ?? this.nutrientEfficacy,
        nutrientEfficacyEn: nutrientEfficacyEn.present
            ? nutrientEfficacyEn.value
            : this.nutrientEfficacyEn,
        imageFileName: imageFileName ?? this.imageFileName,
        backgroundImage: backgroundImage ?? this.backgroundImage,
        distinguish: distinguish ?? this.distinguish,
        distinguishEn:
            distinguishEn.present ? distinguishEn.value : this.distinguishEn,
        typeSpring: typeSpring ?? this.typeSpring,
        typeSummer: typeSummer ?? this.typeSummer,
        typeAutumn: typeAutumn ?? this.typeAutumn,
        typeWinter: typeWinter ?? this.typeWinter,
      );
  Fruit copyWithCompanion(FruitsCompanion data) {
    return Fruit(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      nameEn: data.nameEn.present ? data.nameEn.value : this.nameEn,
      famousArea:
          data.famousArea.present ? data.famousArea.value : this.famousArea,
      famousAreaEn: data.famousAreaEn.present
          ? data.famousAreaEn.value
          : this.famousAreaEn,
      season: data.season.present ? data.season.value : this.season,
      seasonEn: data.seasonEn.present ? data.seasonEn.value : this.seasonEn,
      famousBreed:
          data.famousBreed.present ? data.famousBreed.value : this.famousBreed,
      famousBreedEn: data.famousBreedEn.present
          ? data.famousBreedEn.value
          : this.famousBreedEn,
      sweetBreed:
          data.sweetBreed.present ? data.sweetBreed.value : this.sweetBreed,
      sweetBreedEn: data.sweetBreedEn.present
          ? data.sweetBreedEn.value
          : this.sweetBreedEn,
      seedlessVarieties: data.seedlessVarieties.present
          ? data.seedlessVarieties.value
          : this.seedlessVarieties,
      seedlessVarietiesEn: data.seedlessVarietiesEn.present
          ? data.seedlessVarietiesEn.value
          : this.seedlessVarietiesEn,
      priceRange:
          data.priceRange.present ? data.priceRange.value : this.priceRange,
      priceRangeEn: data.priceRangeEn.present
          ? data.priceRangeEn.value
          : this.priceRangeEn,
      nutrients: data.nutrients.present ? data.nutrients.value : this.nutrients,
      nutrientsEn:
          data.nutrientsEn.present ? data.nutrientsEn.value : this.nutrientsEn,
      nutrientEfficacy: data.nutrientEfficacy.present
          ? data.nutrientEfficacy.value
          : this.nutrientEfficacy,
      nutrientEfficacyEn: data.nutrientEfficacyEn.present
          ? data.nutrientEfficacyEn.value
          : this.nutrientEfficacyEn,
      imageFileName: data.imageFileName.present
          ? data.imageFileName.value
          : this.imageFileName,
      backgroundImage: data.backgroundImage.present
          ? data.backgroundImage.value
          : this.backgroundImage,
      distinguish:
          data.distinguish.present ? data.distinguish.value : this.distinguish,
      distinguishEn: data.distinguishEn.present
          ? data.distinguishEn.value
          : this.distinguishEn,
      typeSpring:
          data.typeSpring.present ? data.typeSpring.value : this.typeSpring,
      typeSummer:
          data.typeSummer.present ? data.typeSummer.value : this.typeSummer,
      typeAutumn:
          data.typeAutumn.present ? data.typeAutumn.value : this.typeAutumn,
      typeWinter:
          data.typeWinter.present ? data.typeWinter.value : this.typeWinter,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Fruit(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameEn: $nameEn, ')
          ..write('famousArea: $famousArea, ')
          ..write('famousAreaEn: $famousAreaEn, ')
          ..write('season: $season, ')
          ..write('seasonEn: $seasonEn, ')
          ..write('famousBreed: $famousBreed, ')
          ..write('famousBreedEn: $famousBreedEn, ')
          ..write('sweetBreed: $sweetBreed, ')
          ..write('sweetBreedEn: $sweetBreedEn, ')
          ..write('seedlessVarieties: $seedlessVarieties, ')
          ..write('seedlessVarietiesEn: $seedlessVarietiesEn, ')
          ..write('priceRange: $priceRange, ')
          ..write('priceRangeEn: $priceRangeEn, ')
          ..write('nutrients: $nutrients, ')
          ..write('nutrientsEn: $nutrientsEn, ')
          ..write('nutrientEfficacy: $nutrientEfficacy, ')
          ..write('nutrientEfficacyEn: $nutrientEfficacyEn, ')
          ..write('imageFileName: $imageFileName, ')
          ..write('backgroundImage: $backgroundImage, ')
          ..write('distinguish: $distinguish, ')
          ..write('distinguishEn: $distinguishEn, ')
          ..write('typeSpring: $typeSpring, ')
          ..write('typeSummer: $typeSummer, ')
          ..write('typeAutumn: $typeAutumn, ')
          ..write('typeWinter: $typeWinter')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        name,
        nameEn,
        famousArea,
        famousAreaEn,
        season,
        seasonEn,
        famousBreed,
        famousBreedEn,
        sweetBreed,
        sweetBreedEn,
        seedlessVarieties,
        seedlessVarietiesEn,
        priceRange,
        priceRangeEn,
        nutrients,
        nutrientsEn,
        nutrientEfficacy,
        nutrientEfficacyEn,
        imageFileName,
        backgroundImage,
        distinguish,
        distinguishEn,
        typeSpring,
        typeSummer,
        typeAutumn,
        typeWinter
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Fruit &&
          other.id == this.id &&
          other.name == this.name &&
          other.nameEn == this.nameEn &&
          other.famousArea == this.famousArea &&
          other.famousAreaEn == this.famousAreaEn &&
          other.season == this.season &&
          other.seasonEn == this.seasonEn &&
          other.famousBreed == this.famousBreed &&
          other.famousBreedEn == this.famousBreedEn &&
          other.sweetBreed == this.sweetBreed &&
          other.sweetBreedEn == this.sweetBreedEn &&
          other.seedlessVarieties == this.seedlessVarieties &&
          other.seedlessVarietiesEn == this.seedlessVarietiesEn &&
          other.priceRange == this.priceRange &&
          other.priceRangeEn == this.priceRangeEn &&
          other.nutrients == this.nutrients &&
          other.nutrientsEn == this.nutrientsEn &&
          other.nutrientEfficacy == this.nutrientEfficacy &&
          other.nutrientEfficacyEn == this.nutrientEfficacyEn &&
          other.imageFileName == this.imageFileName &&
          other.backgroundImage == this.backgroundImage &&
          other.distinguish == this.distinguish &&
          other.distinguishEn == this.distinguishEn &&
          other.typeSpring == this.typeSpring &&
          other.typeSummer == this.typeSummer &&
          other.typeAutumn == this.typeAutumn &&
          other.typeWinter == this.typeWinter);
}

class FruitsCompanion extends UpdateCompanion<Fruit> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> nameEn;
  final Value<String> famousArea;
  final Value<String?> famousAreaEn;
  final Value<String> season;
  final Value<String?> seasonEn;
  final Value<String> famousBreed;
  final Value<String?> famousBreedEn;
  final Value<String> sweetBreed;
  final Value<String?> sweetBreedEn;
  final Value<String> seedlessVarieties;
  final Value<String?> seedlessVarietiesEn;
  final Value<String> priceRange;
  final Value<String?> priceRangeEn;
  final Value<String> nutrients;
  final Value<String?> nutrientsEn;
  final Value<String> nutrientEfficacy;
  final Value<String?> nutrientEfficacyEn;
  final Value<String> imageFileName;
  final Value<String> backgroundImage;
  final Value<String> distinguish;
  final Value<String?> distinguishEn;
  final Value<bool> typeSpring;
  final Value<bool> typeSummer;
  final Value<bool> typeAutumn;
  final Value<bool> typeWinter;
  final Value<int> rowid;
  const FruitsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.nameEn = const Value.absent(),
    this.famousArea = const Value.absent(),
    this.famousAreaEn = const Value.absent(),
    this.season = const Value.absent(),
    this.seasonEn = const Value.absent(),
    this.famousBreed = const Value.absent(),
    this.famousBreedEn = const Value.absent(),
    this.sweetBreed = const Value.absent(),
    this.sweetBreedEn = const Value.absent(),
    this.seedlessVarieties = const Value.absent(),
    this.seedlessVarietiesEn = const Value.absent(),
    this.priceRange = const Value.absent(),
    this.priceRangeEn = const Value.absent(),
    this.nutrients = const Value.absent(),
    this.nutrientsEn = const Value.absent(),
    this.nutrientEfficacy = const Value.absent(),
    this.nutrientEfficacyEn = const Value.absent(),
    this.imageFileName = const Value.absent(),
    this.backgroundImage = const Value.absent(),
    this.distinguish = const Value.absent(),
    this.distinguishEn = const Value.absent(),
    this.typeSpring = const Value.absent(),
    this.typeSummer = const Value.absent(),
    this.typeAutumn = const Value.absent(),
    this.typeWinter = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FruitsCompanion.insert({
    required int id,
    required String name,
    this.nameEn = const Value.absent(),
    required String famousArea,
    this.famousAreaEn = const Value.absent(),
    required String season,
    this.seasonEn = const Value.absent(),
    required String famousBreed,
    this.famousBreedEn = const Value.absent(),
    required String sweetBreed,
    this.sweetBreedEn = const Value.absent(),
    required String seedlessVarieties,
    this.seedlessVarietiesEn = const Value.absent(),
    required String priceRange,
    this.priceRangeEn = const Value.absent(),
    required String nutrients,
    this.nutrientsEn = const Value.absent(),
    required String nutrientEfficacy,
    this.nutrientEfficacyEn = const Value.absent(),
    required String imageFileName,
    required String backgroundImage,
    required String distinguish,
    this.distinguishEn = const Value.absent(),
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
        sweetBreed = Value(sweetBreed),
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
    Expression<String>? nameEn,
    Expression<String>? famousArea,
    Expression<String>? famousAreaEn,
    Expression<String>? season,
    Expression<String>? seasonEn,
    Expression<String>? famousBreed,
    Expression<String>? famousBreedEn,
    Expression<String>? sweetBreed,
    Expression<String>? sweetBreedEn,
    Expression<String>? seedlessVarieties,
    Expression<String>? seedlessVarietiesEn,
    Expression<String>? priceRange,
    Expression<String>? priceRangeEn,
    Expression<String>? nutrients,
    Expression<String>? nutrientsEn,
    Expression<String>? nutrientEfficacy,
    Expression<String>? nutrientEfficacyEn,
    Expression<String>? imageFileName,
    Expression<String>? backgroundImage,
    Expression<String>? distinguish,
    Expression<String>? distinguishEn,
    Expression<bool>? typeSpring,
    Expression<bool>? typeSummer,
    Expression<bool>? typeAutumn,
    Expression<bool>? typeWinter,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (nameEn != null) 'name_en': nameEn,
      if (famousArea != null) 'famous_area': famousArea,
      if (famousAreaEn != null) 'famous_area_en': famousAreaEn,
      if (season != null) 'season': season,
      if (seasonEn != null) 'season_en': seasonEn,
      if (famousBreed != null) 'famous_breed': famousBreed,
      if (famousBreedEn != null) 'famous_breed_en': famousBreedEn,
      if (sweetBreed != null) 'sweet_breed': sweetBreed,
      if (sweetBreedEn != null) 'sweet_breed_en': sweetBreedEn,
      if (seedlessVarieties != null) 'seedless_varieties': seedlessVarieties,
      if (seedlessVarietiesEn != null)
        'seedless_varieties_en': seedlessVarietiesEn,
      if (priceRange != null) 'price_range': priceRange,
      if (priceRangeEn != null) 'price_range_en': priceRangeEn,
      if (nutrients != null) 'nutrients': nutrients,
      if (nutrientsEn != null) 'nutrients_en': nutrientsEn,
      if (nutrientEfficacy != null) 'nutrient_efficacy': nutrientEfficacy,
      if (nutrientEfficacyEn != null)
        'nutrient_efficacy_en': nutrientEfficacyEn,
      if (imageFileName != null) 'image_file_name': imageFileName,
      if (backgroundImage != null) 'background_image': backgroundImage,
      if (distinguish != null) 'distinguish': distinguish,
      if (distinguishEn != null) 'distinguish_en': distinguishEn,
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
      Value<String?>? nameEn,
      Value<String>? famousArea,
      Value<String?>? famousAreaEn,
      Value<String>? season,
      Value<String?>? seasonEn,
      Value<String>? famousBreed,
      Value<String?>? famousBreedEn,
      Value<String>? sweetBreed,
      Value<String?>? sweetBreedEn,
      Value<String>? seedlessVarieties,
      Value<String?>? seedlessVarietiesEn,
      Value<String>? priceRange,
      Value<String?>? priceRangeEn,
      Value<String>? nutrients,
      Value<String?>? nutrientsEn,
      Value<String>? nutrientEfficacy,
      Value<String?>? nutrientEfficacyEn,
      Value<String>? imageFileName,
      Value<String>? backgroundImage,
      Value<String>? distinguish,
      Value<String?>? distinguishEn,
      Value<bool>? typeSpring,
      Value<bool>? typeSummer,
      Value<bool>? typeAutumn,
      Value<bool>? typeWinter,
      Value<int>? rowid}) {
    return FruitsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      nameEn: nameEn ?? this.nameEn,
      famousArea: famousArea ?? this.famousArea,
      famousAreaEn: famousAreaEn ?? this.famousAreaEn,
      season: season ?? this.season,
      seasonEn: seasonEn ?? this.seasonEn,
      famousBreed: famousBreed ?? this.famousBreed,
      famousBreedEn: famousBreedEn ?? this.famousBreedEn,
      sweetBreed: sweetBreed ?? this.sweetBreed,
      sweetBreedEn: sweetBreedEn ?? this.sweetBreedEn,
      seedlessVarieties: seedlessVarieties ?? this.seedlessVarieties,
      seedlessVarietiesEn: seedlessVarietiesEn ?? this.seedlessVarietiesEn,
      priceRange: priceRange ?? this.priceRange,
      priceRangeEn: priceRangeEn ?? this.priceRangeEn,
      nutrients: nutrients ?? this.nutrients,
      nutrientsEn: nutrientsEn ?? this.nutrientsEn,
      nutrientEfficacy: nutrientEfficacy ?? this.nutrientEfficacy,
      nutrientEfficacyEn: nutrientEfficacyEn ?? this.nutrientEfficacyEn,
      imageFileName: imageFileName ?? this.imageFileName,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      distinguish: distinguish ?? this.distinguish,
      distinguishEn: distinguishEn ?? this.distinguishEn,
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
    if (nameEn.present) {
      map['name_en'] = Variable<String>(nameEn.value);
    }
    if (famousArea.present) {
      map['famous_area'] = Variable<String>(famousArea.value);
    }
    if (famousAreaEn.present) {
      map['famous_area_en'] = Variable<String>(famousAreaEn.value);
    }
    if (season.present) {
      map['season'] = Variable<String>(season.value);
    }
    if (seasonEn.present) {
      map['season_en'] = Variable<String>(seasonEn.value);
    }
    if (famousBreed.present) {
      map['famous_breed'] = Variable<String>(famousBreed.value);
    }
    if (famousBreedEn.present) {
      map['famous_breed_en'] = Variable<String>(famousBreedEn.value);
    }
    if (sweetBreed.present) {
      map['sweet_breed'] = Variable<String>(sweetBreed.value);
    }
    if (sweetBreedEn.present) {
      map['sweet_breed_en'] = Variable<String>(sweetBreedEn.value);
    }
    if (seedlessVarieties.present) {
      map['seedless_varieties'] = Variable<String>(seedlessVarieties.value);
    }
    if (seedlessVarietiesEn.present) {
      map['seedless_varieties_en'] =
          Variable<String>(seedlessVarietiesEn.value);
    }
    if (priceRange.present) {
      map['price_range'] = Variable<String>(priceRange.value);
    }
    if (priceRangeEn.present) {
      map['price_range_en'] = Variable<String>(priceRangeEn.value);
    }
    if (nutrients.present) {
      map['nutrients'] = Variable<String>(nutrients.value);
    }
    if (nutrientsEn.present) {
      map['nutrients_en'] = Variable<String>(nutrientsEn.value);
    }
    if (nutrientEfficacy.present) {
      map['nutrient_efficacy'] = Variable<String>(nutrientEfficacy.value);
    }
    if (nutrientEfficacyEn.present) {
      map['nutrient_efficacy_en'] = Variable<String>(nutrientEfficacyEn.value);
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
    if (distinguishEn.present) {
      map['distinguish_en'] = Variable<String>(distinguishEn.value);
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
          ..write('nameEn: $nameEn, ')
          ..write('famousArea: $famousArea, ')
          ..write('famousAreaEn: $famousAreaEn, ')
          ..write('season: $season, ')
          ..write('seasonEn: $seasonEn, ')
          ..write('famousBreed: $famousBreed, ')
          ..write('famousBreedEn: $famousBreedEn, ')
          ..write('sweetBreed: $sweetBreed, ')
          ..write('sweetBreedEn: $sweetBreedEn, ')
          ..write('seedlessVarieties: $seedlessVarieties, ')
          ..write('seedlessVarietiesEn: $seedlessVarietiesEn, ')
          ..write('priceRange: $priceRange, ')
          ..write('priceRangeEn: $priceRangeEn, ')
          ..write('nutrients: $nutrients, ')
          ..write('nutrientsEn: $nutrientsEn, ')
          ..write('nutrientEfficacy: $nutrientEfficacy, ')
          ..write('nutrientEfficacyEn: $nutrientEfficacyEn, ')
          ..write('imageFileName: $imageFileName, ')
          ..write('backgroundImage: $backgroundImage, ')
          ..write('distinguish: $distinguish, ')
          ..write('distinguishEn: $distinguishEn, ')
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
  static const VerificationMeta _questionEnMeta =
      const VerificationMeta('questionEn');
  @override
  late final GeneratedColumn<String> questionEn = GeneratedColumn<String>(
      'question_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _answerMeta = const VerificationMeta('answer');
  @override
  late final GeneratedColumn<String> answer = GeneratedColumn<String>(
      'answer', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _answerEnMeta =
      const VerificationMeta('answerEn');
  @override
  late final GeneratedColumn<String> answerEn = GeneratedColumn<String>(
      'answer_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _choice1Meta =
      const VerificationMeta('choice1');
  @override
  late final GeneratedColumn<String> choice1 = GeneratedColumn<String>(
      'choice1', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _choice1EnMeta =
      const VerificationMeta('choice1En');
  @override
  late final GeneratedColumn<String> choice1En = GeneratedColumn<String>(
      'choice1_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _choice2Meta =
      const VerificationMeta('choice2');
  @override
  late final GeneratedColumn<String> choice2 = GeneratedColumn<String>(
      'choice2', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _choice2EnMeta =
      const VerificationMeta('choice2En');
  @override
  late final GeneratedColumn<String> choice2En = GeneratedColumn<String>(
      'choice2_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _choice3Meta =
      const VerificationMeta('choice3');
  @override
  late final GeneratedColumn<String> choice3 = GeneratedColumn<String>(
      'choice3', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _choice3EnMeta =
      const VerificationMeta('choice3En');
  @override
  late final GeneratedColumn<String> choice3En = GeneratedColumn<String>(
      'choice3_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _explanationMeta =
      const VerificationMeta('explanation');
  @override
  late final GeneratedColumn<String> explanation = GeneratedColumn<String>(
      'explanation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _explanationEnMeta =
      const VerificationMeta('explanationEn');
  @override
  late final GeneratedColumn<String> explanationEn = GeneratedColumn<String>(
      'explanation_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        question,
        questionEn,
        answer,
        answerEn,
        choice1,
        choice1En,
        choice2,
        choice2En,
        choice3,
        choice3En,
        explanation,
        explanationEn
      ];
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
    if (data.containsKey('question_en')) {
      context.handle(
          _questionEnMeta,
          questionEn.isAcceptableOrUnknown(
              data['question_en']!, _questionEnMeta));
    }
    if (data.containsKey('answer')) {
      context.handle(_answerMeta,
          answer.isAcceptableOrUnknown(data['answer']!, _answerMeta));
    } else if (isInserting) {
      context.missing(_answerMeta);
    }
    if (data.containsKey('answer_en')) {
      context.handle(_answerEnMeta,
          answerEn.isAcceptableOrUnknown(data['answer_en']!, _answerEnMeta));
    }
    if (data.containsKey('choice1')) {
      context.handle(_choice1Meta,
          choice1.isAcceptableOrUnknown(data['choice1']!, _choice1Meta));
    } else if (isInserting) {
      context.missing(_choice1Meta);
    }
    if (data.containsKey('choice1_en')) {
      context.handle(_choice1EnMeta,
          choice1En.isAcceptableOrUnknown(data['choice1_en']!, _choice1EnMeta));
    }
    if (data.containsKey('choice2')) {
      context.handle(_choice2Meta,
          choice2.isAcceptableOrUnknown(data['choice2']!, _choice2Meta));
    } else if (isInserting) {
      context.missing(_choice2Meta);
    }
    if (data.containsKey('choice2_en')) {
      context.handle(_choice2EnMeta,
          choice2En.isAcceptableOrUnknown(data['choice2_en']!, _choice2EnMeta));
    }
    if (data.containsKey('choice3')) {
      context.handle(_choice3Meta,
          choice3.isAcceptableOrUnknown(data['choice3']!, _choice3Meta));
    } else if (isInserting) {
      context.missing(_choice3Meta);
    }
    if (data.containsKey('choice3_en')) {
      context.handle(_choice3EnMeta,
          choice3En.isAcceptableOrUnknown(data['choice3_en']!, _choice3EnMeta));
    }
    if (data.containsKey('explanation')) {
      context.handle(
          _explanationMeta,
          explanation.isAcceptableOrUnknown(
              data['explanation']!, _explanationMeta));
    } else if (isInserting) {
      context.missing(_explanationMeta);
    }
    if (data.containsKey('explanation_en')) {
      context.handle(
          _explanationEnMeta,
          explanationEn.isAcceptableOrUnknown(
              data['explanation_en']!, _explanationEnMeta));
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
      questionEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}question_en']),
      answer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}answer'])!,
      answerEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}answer_en']),
      choice1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice1'])!,
      choice1En: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice1_en']),
      choice2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice2'])!,
      choice2En: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice2_en']),
      choice3: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice3'])!,
      choice3En: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice3_en']),
      explanation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}explanation'])!,
      explanationEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}explanation_en']),
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
  final String? questionEn;
  final String answer;
  final String? answerEn;
  final String choice1;
  final String? choice1En;
  final String choice2;
  final String? choice2En;
  final String choice3;
  final String? choice3En;
  final String explanation;
  final String? explanationEn;
  const Question(
      {required this.id,
      required this.question,
      this.questionEn,
      required this.answer,
      this.answerEn,
      required this.choice1,
      this.choice1En,
      required this.choice2,
      this.choice2En,
      required this.choice3,
      this.choice3En,
      required this.explanation,
      this.explanationEn});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['question'] = Variable<String>(question);
    if (!nullToAbsent || questionEn != null) {
      map['question_en'] = Variable<String>(questionEn);
    }
    map['answer'] = Variable<String>(answer);
    if (!nullToAbsent || answerEn != null) {
      map['answer_en'] = Variable<String>(answerEn);
    }
    map['choice1'] = Variable<String>(choice1);
    if (!nullToAbsent || choice1En != null) {
      map['choice1_en'] = Variable<String>(choice1En);
    }
    map['choice2'] = Variable<String>(choice2);
    if (!nullToAbsent || choice2En != null) {
      map['choice2_en'] = Variable<String>(choice2En);
    }
    map['choice3'] = Variable<String>(choice3);
    if (!nullToAbsent || choice3En != null) {
      map['choice3_en'] = Variable<String>(choice3En);
    }
    map['explanation'] = Variable<String>(explanation);
    if (!nullToAbsent || explanationEn != null) {
      map['explanation_en'] = Variable<String>(explanationEn);
    }
    return map;
  }

  QuestionsCompanion toCompanion(bool nullToAbsent) {
    return QuestionsCompanion(
      id: Value(id),
      question: Value(question),
      questionEn: questionEn == null && nullToAbsent
          ? const Value.absent()
          : Value(questionEn),
      answer: Value(answer),
      answerEn: answerEn == null && nullToAbsent
          ? const Value.absent()
          : Value(answerEn),
      choice1: Value(choice1),
      choice1En: choice1En == null && nullToAbsent
          ? const Value.absent()
          : Value(choice1En),
      choice2: Value(choice2),
      choice2En: choice2En == null && nullToAbsent
          ? const Value.absent()
          : Value(choice2En),
      choice3: Value(choice3),
      choice3En: choice3En == null && nullToAbsent
          ? const Value.absent()
          : Value(choice3En),
      explanation: Value(explanation),
      explanationEn: explanationEn == null && nullToAbsent
          ? const Value.absent()
          : Value(explanationEn),
    );
  }

  factory Question.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Question(
      id: serializer.fromJson<int>(json['id']),
      question: serializer.fromJson<String>(json['question']),
      questionEn: serializer.fromJson<String?>(json['questionEn']),
      answer: serializer.fromJson<String>(json['answer']),
      answerEn: serializer.fromJson<String?>(json['answerEn']),
      choice1: serializer.fromJson<String>(json['choice1']),
      choice1En: serializer.fromJson<String?>(json['choice1En']),
      choice2: serializer.fromJson<String>(json['choice2']),
      choice2En: serializer.fromJson<String?>(json['choice2En']),
      choice3: serializer.fromJson<String>(json['choice3']),
      choice3En: serializer.fromJson<String?>(json['choice3En']),
      explanation: serializer.fromJson<String>(json['explanation']),
      explanationEn: serializer.fromJson<String?>(json['explanationEn']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'question': serializer.toJson<String>(question),
      'questionEn': serializer.toJson<String?>(questionEn),
      'answer': serializer.toJson<String>(answer),
      'answerEn': serializer.toJson<String?>(answerEn),
      'choice1': serializer.toJson<String>(choice1),
      'choice1En': serializer.toJson<String?>(choice1En),
      'choice2': serializer.toJson<String>(choice2),
      'choice2En': serializer.toJson<String?>(choice2En),
      'choice3': serializer.toJson<String>(choice3),
      'choice3En': serializer.toJson<String?>(choice3En),
      'explanation': serializer.toJson<String>(explanation),
      'explanationEn': serializer.toJson<String?>(explanationEn),
    };
  }

  Question copyWith(
          {int? id,
          String? question,
          Value<String?> questionEn = const Value.absent(),
          String? answer,
          Value<String?> answerEn = const Value.absent(),
          String? choice1,
          Value<String?> choice1En = const Value.absent(),
          String? choice2,
          Value<String?> choice2En = const Value.absent(),
          String? choice3,
          Value<String?> choice3En = const Value.absent(),
          String? explanation,
          Value<String?> explanationEn = const Value.absent()}) =>
      Question(
        id: id ?? this.id,
        question: question ?? this.question,
        questionEn: questionEn.present ? questionEn.value : this.questionEn,
        answer: answer ?? this.answer,
        answerEn: answerEn.present ? answerEn.value : this.answerEn,
        choice1: choice1 ?? this.choice1,
        choice1En: choice1En.present ? choice1En.value : this.choice1En,
        choice2: choice2 ?? this.choice2,
        choice2En: choice2En.present ? choice2En.value : this.choice2En,
        choice3: choice3 ?? this.choice3,
        choice3En: choice3En.present ? choice3En.value : this.choice3En,
        explanation: explanation ?? this.explanation,
        explanationEn:
            explanationEn.present ? explanationEn.value : this.explanationEn,
      );
  Question copyWithCompanion(QuestionsCompanion data) {
    return Question(
      id: data.id.present ? data.id.value : this.id,
      question: data.question.present ? data.question.value : this.question,
      questionEn:
          data.questionEn.present ? data.questionEn.value : this.questionEn,
      answer: data.answer.present ? data.answer.value : this.answer,
      answerEn: data.answerEn.present ? data.answerEn.value : this.answerEn,
      choice1: data.choice1.present ? data.choice1.value : this.choice1,
      choice1En: data.choice1En.present ? data.choice1En.value : this.choice1En,
      choice2: data.choice2.present ? data.choice2.value : this.choice2,
      choice2En: data.choice2En.present ? data.choice2En.value : this.choice2En,
      choice3: data.choice3.present ? data.choice3.value : this.choice3,
      choice3En: data.choice3En.present ? data.choice3En.value : this.choice3En,
      explanation:
          data.explanation.present ? data.explanation.value : this.explanation,
      explanationEn: data.explanationEn.present
          ? data.explanationEn.value
          : this.explanationEn,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Question(')
          ..write('id: $id, ')
          ..write('question: $question, ')
          ..write('questionEn: $questionEn, ')
          ..write('answer: $answer, ')
          ..write('answerEn: $answerEn, ')
          ..write('choice1: $choice1, ')
          ..write('choice1En: $choice1En, ')
          ..write('choice2: $choice2, ')
          ..write('choice2En: $choice2En, ')
          ..write('choice3: $choice3, ')
          ..write('choice3En: $choice3En, ')
          ..write('explanation: $explanation, ')
          ..write('explanationEn: $explanationEn')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      question,
      questionEn,
      answer,
      answerEn,
      choice1,
      choice1En,
      choice2,
      choice2En,
      choice3,
      choice3En,
      explanation,
      explanationEn);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Question &&
          other.id == this.id &&
          other.question == this.question &&
          other.questionEn == this.questionEn &&
          other.answer == this.answer &&
          other.answerEn == this.answerEn &&
          other.choice1 == this.choice1 &&
          other.choice1En == this.choice1En &&
          other.choice2 == this.choice2 &&
          other.choice2En == this.choice2En &&
          other.choice3 == this.choice3 &&
          other.choice3En == this.choice3En &&
          other.explanation == this.explanation &&
          other.explanationEn == this.explanationEn);
}

class QuestionsCompanion extends UpdateCompanion<Question> {
  final Value<int> id;
  final Value<String> question;
  final Value<String?> questionEn;
  final Value<String> answer;
  final Value<String?> answerEn;
  final Value<String> choice1;
  final Value<String?> choice1En;
  final Value<String> choice2;
  final Value<String?> choice2En;
  final Value<String> choice3;
  final Value<String?> choice3En;
  final Value<String> explanation;
  final Value<String?> explanationEn;
  final Value<int> rowid;
  const QuestionsCompanion({
    this.id = const Value.absent(),
    this.question = const Value.absent(),
    this.questionEn = const Value.absent(),
    this.answer = const Value.absent(),
    this.answerEn = const Value.absent(),
    this.choice1 = const Value.absent(),
    this.choice1En = const Value.absent(),
    this.choice2 = const Value.absent(),
    this.choice2En = const Value.absent(),
    this.choice3 = const Value.absent(),
    this.choice3En = const Value.absent(),
    this.explanation = const Value.absent(),
    this.explanationEn = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuestionsCompanion.insert({
    required int id,
    required String question,
    this.questionEn = const Value.absent(),
    required String answer,
    this.answerEn = const Value.absent(),
    required String choice1,
    this.choice1En = const Value.absent(),
    required String choice2,
    this.choice2En = const Value.absent(),
    required String choice3,
    this.choice3En = const Value.absent(),
    required String explanation,
    this.explanationEn = const Value.absent(),
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
    Expression<String>? questionEn,
    Expression<String>? answer,
    Expression<String>? answerEn,
    Expression<String>? choice1,
    Expression<String>? choice1En,
    Expression<String>? choice2,
    Expression<String>? choice2En,
    Expression<String>? choice3,
    Expression<String>? choice3En,
    Expression<String>? explanation,
    Expression<String>? explanationEn,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (question != null) 'question': question,
      if (questionEn != null) 'question_en': questionEn,
      if (answer != null) 'answer': answer,
      if (answerEn != null) 'answer_en': answerEn,
      if (choice1 != null) 'choice1': choice1,
      if (choice1En != null) 'choice1_en': choice1En,
      if (choice2 != null) 'choice2': choice2,
      if (choice2En != null) 'choice2_en': choice2En,
      if (choice3 != null) 'choice3': choice3,
      if (choice3En != null) 'choice3_en': choice3En,
      if (explanation != null) 'explanation': explanation,
      if (explanationEn != null) 'explanation_en': explanationEn,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuestionsCompanion copyWith(
      {Value<int>? id,
      Value<String>? question,
      Value<String?>? questionEn,
      Value<String>? answer,
      Value<String?>? answerEn,
      Value<String>? choice1,
      Value<String?>? choice1En,
      Value<String>? choice2,
      Value<String?>? choice2En,
      Value<String>? choice3,
      Value<String?>? choice3En,
      Value<String>? explanation,
      Value<String?>? explanationEn,
      Value<int>? rowid}) {
    return QuestionsCompanion(
      id: id ?? this.id,
      question: question ?? this.question,
      questionEn: questionEn ?? this.questionEn,
      answer: answer ?? this.answer,
      answerEn: answerEn ?? this.answerEn,
      choice1: choice1 ?? this.choice1,
      choice1En: choice1En ?? this.choice1En,
      choice2: choice2 ?? this.choice2,
      choice2En: choice2En ?? this.choice2En,
      choice3: choice3 ?? this.choice3,
      choice3En: choice3En ?? this.choice3En,
      explanation: explanation ?? this.explanation,
      explanationEn: explanationEn ?? this.explanationEn,
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
    if (questionEn.present) {
      map['question_en'] = Variable<String>(questionEn.value);
    }
    if (answer.present) {
      map['answer'] = Variable<String>(answer.value);
    }
    if (answerEn.present) {
      map['answer_en'] = Variable<String>(answerEn.value);
    }
    if (choice1.present) {
      map['choice1'] = Variable<String>(choice1.value);
    }
    if (choice1En.present) {
      map['choice1_en'] = Variable<String>(choice1En.value);
    }
    if (choice2.present) {
      map['choice2'] = Variable<String>(choice2.value);
    }
    if (choice2En.present) {
      map['choice2_en'] = Variable<String>(choice2En.value);
    }
    if (choice3.present) {
      map['choice3'] = Variable<String>(choice3.value);
    }
    if (choice3En.present) {
      map['choice3_en'] = Variable<String>(choice3En.value);
    }
    if (explanation.present) {
      map['explanation'] = Variable<String>(explanation.value);
    }
    if (explanationEn.present) {
      map['explanation_en'] = Variable<String>(explanationEn.value);
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
          ..write('questionEn: $questionEn, ')
          ..write('answer: $answer, ')
          ..write('answerEn: $answerEn, ')
          ..write('choice1: $choice1, ')
          ..write('choice1En: $choice1En, ')
          ..write('choice2: $choice2, ')
          ..write('choice2En: $choice2En, ')
          ..write('choice3: $choice3, ')
          ..write('choice3En: $choice3En, ')
          ..write('explanation: $explanation, ')
          ..write('explanationEn: $explanationEn, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  $MyDatabaseManager get managers => $MyDatabaseManager(this);
  late final $FruitsTable fruits = $FruitsTable(this);
  late final $QuestionsTable questions = $QuestionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [fruits, questions];
}

typedef $$FruitsTableCreateCompanionBuilder = FruitsCompanion Function({
  required int id,
  required String name,
  Value<String?> nameEn,
  required String famousArea,
  Value<String?> famousAreaEn,
  required String season,
  Value<String?> seasonEn,
  required String famousBreed,
  Value<String?> famousBreedEn,
  required String sweetBreed,
  Value<String?> sweetBreedEn,
  required String seedlessVarieties,
  Value<String?> seedlessVarietiesEn,
  required String priceRange,
  Value<String?> priceRangeEn,
  required String nutrients,
  Value<String?> nutrientsEn,
  required String nutrientEfficacy,
  Value<String?> nutrientEfficacyEn,
  required String imageFileName,
  required String backgroundImage,
  required String distinguish,
  Value<String?> distinguishEn,
  Value<bool> typeSpring,
  Value<bool> typeSummer,
  Value<bool> typeAutumn,
  Value<bool> typeWinter,
  Value<int> rowid,
});
typedef $$FruitsTableUpdateCompanionBuilder = FruitsCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> nameEn,
  Value<String> famousArea,
  Value<String?> famousAreaEn,
  Value<String> season,
  Value<String?> seasonEn,
  Value<String> famousBreed,
  Value<String?> famousBreedEn,
  Value<String> sweetBreed,
  Value<String?> sweetBreedEn,
  Value<String> seedlessVarieties,
  Value<String?> seedlessVarietiesEn,
  Value<String> priceRange,
  Value<String?> priceRangeEn,
  Value<String> nutrients,
  Value<String?> nutrientsEn,
  Value<String> nutrientEfficacy,
  Value<String?> nutrientEfficacyEn,
  Value<String> imageFileName,
  Value<String> backgroundImage,
  Value<String> distinguish,
  Value<String?> distinguishEn,
  Value<bool> typeSpring,
  Value<bool> typeSummer,
  Value<bool> typeAutumn,
  Value<bool> typeWinter,
  Value<int> rowid,
});

class $$FruitsTableFilterComposer
    extends FilterComposer<_$MyDatabase, $FruitsTable> {
  $$FruitsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nameEn => $state.composableBuilder(
      column: $state.table.nameEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get famousArea => $state.composableBuilder(
      column: $state.table.famousArea,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get famousAreaEn => $state.composableBuilder(
      column: $state.table.famousAreaEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get season => $state.composableBuilder(
      column: $state.table.season,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get seasonEn => $state.composableBuilder(
      column: $state.table.seasonEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get famousBreed => $state.composableBuilder(
      column: $state.table.famousBreed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get famousBreedEn => $state.composableBuilder(
      column: $state.table.famousBreedEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sweetBreed => $state.composableBuilder(
      column: $state.table.sweetBreed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sweetBreedEn => $state.composableBuilder(
      column: $state.table.sweetBreedEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get seedlessVarieties => $state.composableBuilder(
      column: $state.table.seedlessVarieties,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get seedlessVarietiesEn => $state.composableBuilder(
      column: $state.table.seedlessVarietiesEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get priceRange => $state.composableBuilder(
      column: $state.table.priceRange,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get priceRangeEn => $state.composableBuilder(
      column: $state.table.priceRangeEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nutrients => $state.composableBuilder(
      column: $state.table.nutrients,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nutrientsEn => $state.composableBuilder(
      column: $state.table.nutrientsEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nutrientEfficacy => $state.composableBuilder(
      column: $state.table.nutrientEfficacy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nutrientEfficacyEn => $state.composableBuilder(
      column: $state.table.nutrientEfficacyEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get imageFileName => $state.composableBuilder(
      column: $state.table.imageFileName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get backgroundImage => $state.composableBuilder(
      column: $state.table.backgroundImage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get distinguish => $state.composableBuilder(
      column: $state.table.distinguish,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get distinguishEn => $state.composableBuilder(
      column: $state.table.distinguishEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get typeSpring => $state.composableBuilder(
      column: $state.table.typeSpring,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get typeSummer => $state.composableBuilder(
      column: $state.table.typeSummer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get typeAutumn => $state.composableBuilder(
      column: $state.table.typeAutumn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get typeWinter => $state.composableBuilder(
      column: $state.table.typeWinter,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$FruitsTableOrderingComposer
    extends OrderingComposer<_$MyDatabase, $FruitsTable> {
  $$FruitsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nameEn => $state.composableBuilder(
      column: $state.table.nameEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get famousArea => $state.composableBuilder(
      column: $state.table.famousArea,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get famousAreaEn => $state.composableBuilder(
      column: $state.table.famousAreaEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get season => $state.composableBuilder(
      column: $state.table.season,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get seasonEn => $state.composableBuilder(
      column: $state.table.seasonEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get famousBreed => $state.composableBuilder(
      column: $state.table.famousBreed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get famousBreedEn => $state.composableBuilder(
      column: $state.table.famousBreedEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sweetBreed => $state.composableBuilder(
      column: $state.table.sweetBreed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sweetBreedEn => $state.composableBuilder(
      column: $state.table.sweetBreedEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get seedlessVarieties => $state.composableBuilder(
      column: $state.table.seedlessVarieties,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get seedlessVarietiesEn => $state.composableBuilder(
      column: $state.table.seedlessVarietiesEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get priceRange => $state.composableBuilder(
      column: $state.table.priceRange,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get priceRangeEn => $state.composableBuilder(
      column: $state.table.priceRangeEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nutrients => $state.composableBuilder(
      column: $state.table.nutrients,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nutrientsEn => $state.composableBuilder(
      column: $state.table.nutrientsEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nutrientEfficacy => $state.composableBuilder(
      column: $state.table.nutrientEfficacy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nutrientEfficacyEn => $state.composableBuilder(
      column: $state.table.nutrientEfficacyEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get imageFileName => $state.composableBuilder(
      column: $state.table.imageFileName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get backgroundImage => $state.composableBuilder(
      column: $state.table.backgroundImage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get distinguish => $state.composableBuilder(
      column: $state.table.distinguish,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get distinguishEn => $state.composableBuilder(
      column: $state.table.distinguishEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get typeSpring => $state.composableBuilder(
      column: $state.table.typeSpring,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get typeSummer => $state.composableBuilder(
      column: $state.table.typeSummer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get typeAutumn => $state.composableBuilder(
      column: $state.table.typeAutumn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get typeWinter => $state.composableBuilder(
      column: $state.table.typeWinter,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$FruitsTableTableManager extends RootTableManager<
    _$MyDatabase,
    $FruitsTable,
    Fruit,
    $$FruitsTableFilterComposer,
    $$FruitsTableOrderingComposer,
    $$FruitsTableCreateCompanionBuilder,
    $$FruitsTableUpdateCompanionBuilder,
    (Fruit, BaseReferences<_$MyDatabase, $FruitsTable, Fruit>),
    Fruit,
    PrefetchHooks Function()> {
  $$FruitsTableTableManager(_$MyDatabase db, $FruitsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$FruitsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$FruitsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> nameEn = const Value.absent(),
            Value<String> famousArea = const Value.absent(),
            Value<String?> famousAreaEn = const Value.absent(),
            Value<String> season = const Value.absent(),
            Value<String?> seasonEn = const Value.absent(),
            Value<String> famousBreed = const Value.absent(),
            Value<String?> famousBreedEn = const Value.absent(),
            Value<String> sweetBreed = const Value.absent(),
            Value<String?> sweetBreedEn = const Value.absent(),
            Value<String> seedlessVarieties = const Value.absent(),
            Value<String?> seedlessVarietiesEn = const Value.absent(),
            Value<String> priceRange = const Value.absent(),
            Value<String?> priceRangeEn = const Value.absent(),
            Value<String> nutrients = const Value.absent(),
            Value<String?> nutrientsEn = const Value.absent(),
            Value<String> nutrientEfficacy = const Value.absent(),
            Value<String?> nutrientEfficacyEn = const Value.absent(),
            Value<String> imageFileName = const Value.absent(),
            Value<String> backgroundImage = const Value.absent(),
            Value<String> distinguish = const Value.absent(),
            Value<String?> distinguishEn = const Value.absent(),
            Value<bool> typeSpring = const Value.absent(),
            Value<bool> typeSummer = const Value.absent(),
            Value<bool> typeAutumn = const Value.absent(),
            Value<bool> typeWinter = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FruitsCompanion(
            id: id,
            name: name,
            nameEn: nameEn,
            famousArea: famousArea,
            famousAreaEn: famousAreaEn,
            season: season,
            seasonEn: seasonEn,
            famousBreed: famousBreed,
            famousBreedEn: famousBreedEn,
            sweetBreed: sweetBreed,
            sweetBreedEn: sweetBreedEn,
            seedlessVarieties: seedlessVarieties,
            seedlessVarietiesEn: seedlessVarietiesEn,
            priceRange: priceRange,
            priceRangeEn: priceRangeEn,
            nutrients: nutrients,
            nutrientsEn: nutrientsEn,
            nutrientEfficacy: nutrientEfficacy,
            nutrientEfficacyEn: nutrientEfficacyEn,
            imageFileName: imageFileName,
            backgroundImage: backgroundImage,
            distinguish: distinguish,
            distinguishEn: distinguishEn,
            typeSpring: typeSpring,
            typeSummer: typeSummer,
            typeAutumn: typeAutumn,
            typeWinter: typeWinter,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required String name,
            Value<String?> nameEn = const Value.absent(),
            required String famousArea,
            Value<String?> famousAreaEn = const Value.absent(),
            required String season,
            Value<String?> seasonEn = const Value.absent(),
            required String famousBreed,
            Value<String?> famousBreedEn = const Value.absent(),
            required String sweetBreed,
            Value<String?> sweetBreedEn = const Value.absent(),
            required String seedlessVarieties,
            Value<String?> seedlessVarietiesEn = const Value.absent(),
            required String priceRange,
            Value<String?> priceRangeEn = const Value.absent(),
            required String nutrients,
            Value<String?> nutrientsEn = const Value.absent(),
            required String nutrientEfficacy,
            Value<String?> nutrientEfficacyEn = const Value.absent(),
            required String imageFileName,
            required String backgroundImage,
            required String distinguish,
            Value<String?> distinguishEn = const Value.absent(),
            Value<bool> typeSpring = const Value.absent(),
            Value<bool> typeSummer = const Value.absent(),
            Value<bool> typeAutumn = const Value.absent(),
            Value<bool> typeWinter = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FruitsCompanion.insert(
            id: id,
            name: name,
            nameEn: nameEn,
            famousArea: famousArea,
            famousAreaEn: famousAreaEn,
            season: season,
            seasonEn: seasonEn,
            famousBreed: famousBreed,
            famousBreedEn: famousBreedEn,
            sweetBreed: sweetBreed,
            sweetBreedEn: sweetBreedEn,
            seedlessVarieties: seedlessVarieties,
            seedlessVarietiesEn: seedlessVarietiesEn,
            priceRange: priceRange,
            priceRangeEn: priceRangeEn,
            nutrients: nutrients,
            nutrientsEn: nutrientsEn,
            nutrientEfficacy: nutrientEfficacy,
            nutrientEfficacyEn: nutrientEfficacyEn,
            imageFileName: imageFileName,
            backgroundImage: backgroundImage,
            distinguish: distinguish,
            distinguishEn: distinguishEn,
            typeSpring: typeSpring,
            typeSummer: typeSummer,
            typeAutumn: typeAutumn,
            typeWinter: typeWinter,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FruitsTableProcessedTableManager = ProcessedTableManager<
    _$MyDatabase,
    $FruitsTable,
    Fruit,
    $$FruitsTableFilterComposer,
    $$FruitsTableOrderingComposer,
    $$FruitsTableCreateCompanionBuilder,
    $$FruitsTableUpdateCompanionBuilder,
    (Fruit, BaseReferences<_$MyDatabase, $FruitsTable, Fruit>),
    Fruit,
    PrefetchHooks Function()>;
typedef $$QuestionsTableCreateCompanionBuilder = QuestionsCompanion Function({
  required int id,
  required String question,
  Value<String?> questionEn,
  required String answer,
  Value<String?> answerEn,
  required String choice1,
  Value<String?> choice1En,
  required String choice2,
  Value<String?> choice2En,
  required String choice3,
  Value<String?> choice3En,
  required String explanation,
  Value<String?> explanationEn,
  Value<int> rowid,
});
typedef $$QuestionsTableUpdateCompanionBuilder = QuestionsCompanion Function({
  Value<int> id,
  Value<String> question,
  Value<String?> questionEn,
  Value<String> answer,
  Value<String?> answerEn,
  Value<String> choice1,
  Value<String?> choice1En,
  Value<String> choice2,
  Value<String?> choice2En,
  Value<String> choice3,
  Value<String?> choice3En,
  Value<String> explanation,
  Value<String?> explanationEn,
  Value<int> rowid,
});

class $$QuestionsTableFilterComposer
    extends FilterComposer<_$MyDatabase, $QuestionsTable> {
  $$QuestionsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get question => $state.composableBuilder(
      column: $state.table.question,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get questionEn => $state.composableBuilder(
      column: $state.table.questionEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get answer => $state.composableBuilder(
      column: $state.table.answer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get answerEn => $state.composableBuilder(
      column: $state.table.answerEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get choice1 => $state.composableBuilder(
      column: $state.table.choice1,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get choice1En => $state.composableBuilder(
      column: $state.table.choice1En,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get choice2 => $state.composableBuilder(
      column: $state.table.choice2,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get choice2En => $state.composableBuilder(
      column: $state.table.choice2En,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get choice3 => $state.composableBuilder(
      column: $state.table.choice3,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get choice3En => $state.composableBuilder(
      column: $state.table.choice3En,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get explanation => $state.composableBuilder(
      column: $state.table.explanation,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get explanationEn => $state.composableBuilder(
      column: $state.table.explanationEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$QuestionsTableOrderingComposer
    extends OrderingComposer<_$MyDatabase, $QuestionsTable> {
  $$QuestionsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get question => $state.composableBuilder(
      column: $state.table.question,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get questionEn => $state.composableBuilder(
      column: $state.table.questionEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get answer => $state.composableBuilder(
      column: $state.table.answer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get answerEn => $state.composableBuilder(
      column: $state.table.answerEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get choice1 => $state.composableBuilder(
      column: $state.table.choice1,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get choice1En => $state.composableBuilder(
      column: $state.table.choice1En,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get choice2 => $state.composableBuilder(
      column: $state.table.choice2,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get choice2En => $state.composableBuilder(
      column: $state.table.choice2En,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get choice3 => $state.composableBuilder(
      column: $state.table.choice3,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get choice3En => $state.composableBuilder(
      column: $state.table.choice3En,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get explanation => $state.composableBuilder(
      column: $state.table.explanation,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get explanationEn => $state.composableBuilder(
      column: $state.table.explanationEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$QuestionsTableTableManager extends RootTableManager<
    _$MyDatabase,
    $QuestionsTable,
    Question,
    $$QuestionsTableFilterComposer,
    $$QuestionsTableOrderingComposer,
    $$QuestionsTableCreateCompanionBuilder,
    $$QuestionsTableUpdateCompanionBuilder,
    (Question, BaseReferences<_$MyDatabase, $QuestionsTable, Question>),
    Question,
    PrefetchHooks Function()> {
  $$QuestionsTableTableManager(_$MyDatabase db, $QuestionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$QuestionsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$QuestionsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> question = const Value.absent(),
            Value<String?> questionEn = const Value.absent(),
            Value<String> answer = const Value.absent(),
            Value<String?> answerEn = const Value.absent(),
            Value<String> choice1 = const Value.absent(),
            Value<String?> choice1En = const Value.absent(),
            Value<String> choice2 = const Value.absent(),
            Value<String?> choice2En = const Value.absent(),
            Value<String> choice3 = const Value.absent(),
            Value<String?> choice3En = const Value.absent(),
            Value<String> explanation = const Value.absent(),
            Value<String?> explanationEn = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QuestionsCompanion(
            id: id,
            question: question,
            questionEn: questionEn,
            answer: answer,
            answerEn: answerEn,
            choice1: choice1,
            choice1En: choice1En,
            choice2: choice2,
            choice2En: choice2En,
            choice3: choice3,
            choice3En: choice3En,
            explanation: explanation,
            explanationEn: explanationEn,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required String question,
            Value<String?> questionEn = const Value.absent(),
            required String answer,
            Value<String?> answerEn = const Value.absent(),
            required String choice1,
            Value<String?> choice1En = const Value.absent(),
            required String choice2,
            Value<String?> choice2En = const Value.absent(),
            required String choice3,
            Value<String?> choice3En = const Value.absent(),
            required String explanation,
            Value<String?> explanationEn = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QuestionsCompanion.insert(
            id: id,
            question: question,
            questionEn: questionEn,
            answer: answer,
            answerEn: answerEn,
            choice1: choice1,
            choice1En: choice1En,
            choice2: choice2,
            choice2En: choice2En,
            choice3: choice3,
            choice3En: choice3En,
            explanation: explanation,
            explanationEn: explanationEn,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$QuestionsTableProcessedTableManager = ProcessedTableManager<
    _$MyDatabase,
    $QuestionsTable,
    Question,
    $$QuestionsTableFilterComposer,
    $$QuestionsTableOrderingComposer,
    $$QuestionsTableCreateCompanionBuilder,
    $$QuestionsTableUpdateCompanionBuilder,
    (Question, BaseReferences<_$MyDatabase, $QuestionsTable, Question>),
    Question,
    PrefetchHooks Function()>;

class $MyDatabaseManager {
  final _$MyDatabase _db;
  $MyDatabaseManager(this._db);
  $$FruitsTableTableManager get fruits =>
      $$FruitsTableTableManager(_db, _db.fruits);
  $$QuestionsTableTableManager get questions =>
      $$QuestionsTableTableManager(_db, _db.questions);
}
