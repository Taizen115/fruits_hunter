import 'package:flutter/material.dart';
import 'package:fruit_hunter/generated/l10n.dart';

class Category {
  final int categoryId;
  final String nameJp;

  Category({required this.categoryId, required this.nameJp,});
}

List<Category> getCategories(BuildContext context) => [
  Category(categoryId: 0, nameJp: S.of(context).All,),
  Category(categoryId: 1, nameJp: S.of(context).SpringFruit,),
  Category(categoryId: 2, nameJp: S.of(context).SummerFruit,),
  Category(categoryId: 3, nameJp: S.of(context).AutumnFruit,),
  Category(categoryId: 4, nameJp: S.of(context).WinterFruit,),
];