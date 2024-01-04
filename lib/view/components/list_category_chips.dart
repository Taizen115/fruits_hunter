import 'package:flutter/material.dart';
import 'package:fruits_hunter/data/list_category.dart';

class ListCategoryChips extends StatefulWidget {
  final ValueChanged<int>onCategorySelected;

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
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ChoiceChip(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
            selectedColor: Colors.blue[500],
            backgroundColor: Colors.white70,
            showCheckmark: false,
            label: Text(categories[index].nameJp, style: TextStyle(fontSize: 15.0, color: Colors.black, ),),
            selected: value == index,
            onSelected: (bool isSelected) {
              setState(() {
                value = isSelected ? index:0;
                widget.onCategorySelected(index);
              });
            },
          ),
        );
      }).toList(),
    );
  }
}
