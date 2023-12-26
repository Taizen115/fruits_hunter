import 'package:flutter/material.dart';
import 'package:fruits_hunter/data/list_category.dart';

class ListCategoryChips extends StatefulWidget {
  final ValueChanged onCategorySelected;


  ListCategoryChips({required this.onCategorySelected});

  @override
  State<ListCategoryChips> createState() => _ListCategoryChipsState();
}

class _ListCategoryChipsState extends State<ListCategoryChips> {
  var value = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4.0,
      children: List.generate(categories.length, (int index) {
        return ChoiceChip(
          label: Text(categories[index].nameJp),
          selected: value == index,
          onSelected: (bool isSelected) {
            setState(() {
              value = isSelected ? index:0;
            });
          },
        );
      }).toList(),
    );
  }
}
