import 'package:flutter/material.dart';
import 'package:fruit_hunter/data/list_category.dart';

class ListCategoryChips extends StatefulWidget {
  final ValueChanged<int>onCategorySelected;

  ListCategoryChips({required this.onCategorySelected});

  @override
  State<ListCategoryChips> createState() => _ListCategoryChipsState();
}

class _ListCategoryChipsState extends State<ListCategoryChips> {
  var value = 0;

  //children：Wrapの中にどんなものを入れるのか、その中身を決める部分です。
  // List.generate：ボタンをたくさん作るための命令です。
  // categories.length：ボタンを作る数を決めています。例えば、フルーツの種類の数だけボタンを作りたい場合、
  // categoriesというリストにフルーツの名前が全部入っているので、その数だけボタンを作ります。
  // (int index)：ボタンを作る順番を表す番号です。1番目のボタン、2番目のボタン、…のように区別するためのものです。
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
                value == index;
                widget.onCategorySelected(index);
              });
            },
          ),
        );
      }).toList(),
    );
  }
}
