

class Category {
  final int categoryId;
  final String nameJp;

  Category({required this.categoryId, required this.nameJp,});
}

final List<Category> categories = [
  Category(categoryId: 0, nameJp: "全て",),
  Category(categoryId: 1, nameJp: "春の果物"),
  Category(categoryId: 2, nameJp: "夏の果物"),
  Category(categoryId: 3, nameJp: "秋の果物"),
  Category(categoryId: 4, nameJp: "冬の果物"),
];