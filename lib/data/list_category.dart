

import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String nameJp;

  Category({required this.categoryId, required this.nameJp,});
}

List<Category> getCategories(BuildContext context) => [
  Category(categoryId: 0, nameJp: S.of(context),),
  Category(categoryId: 1, nameJp: "春の果物"),
  Category(categoryId: 2, nameJp: "夏の果物"),
  Category(categoryId: 3, nameJp: "秋の果物"),
  Category(categoryId: 4, nameJp: "冬の果物"),
];