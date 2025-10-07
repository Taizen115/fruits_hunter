import 'package:flutter/material.dart';
import 'package:fruit_hunter/generated/l10n.dart';

class Category {
  final int categoryId;
  final String nameJp;

  Category({required this.categoryId, required this.nameJp,});
}

List<Category> getCategories(BuildContext context) => [
  Category(categoryId: 0, nameJp: S.of(context).all,),
  Category(categoryId: 1, nameJp: S.of(context).springFruit,),
  Category(categoryId: 2, nameJp: S.of(context).summerFruit,),
  Category(categoryId: 3, nameJp: S.of(context).autumnFruit,),
  Category(categoryId: 4, nameJp: S.of(context).winterFruit,),
];