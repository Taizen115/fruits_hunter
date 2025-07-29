import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:intl/intl.dart';
import '../components/fruit_record.dart';
import '../components/fruit_record_logic.dart';
import 'fruit_record_list_screen.dart';

class FruitRecordFormEditScreen extends StatefulWidget {
  final FruitRecord? recordToEdit; // ← 編集対象

  const FruitRecordFormEditScreen({this.recordToEdit});

  @override
  State<FruitRecordFormEditScreen> createState() => _FruitRecordFormEditScreenState();
}

class _FruitRecordFormEditScreenState extends State<FruitRecordFormEditScreen> {
  final _formKey = GlobalKey<FormState>();
  String _fruitType = '';
  String _farmName = '';
  String? _memo;
  File? _imageFile;
  DateTime _selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    if (widget.recordToEdit != null) {
      final r = widget.recordToEdit!;
      _fruitType = r.fruitType;
      _farmName = r.farmName;
      _memo = r.memo;
      _selectedDate = DateFormat('yyyy-MM-dd').parse(r.date);
      if (r.imagePath != null) {
        _imageFile = File(r.imagePath!);
      }
    }
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      final directory = await getApplicationDocumentsDirectory();
      final fileName = p.basename(picked.path);
      final savedImage = await File(picked.path).copy('${directory.path}/$fileName');
      setState(() {
        _imageFile = savedImage;
      });
    }
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _save() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final newRecord = FruitRecord(
        fruitType: _fruitType,
        farmName: _farmName,
        date: DateFormat('yyyy-MM-dd').format(_selectedDate),
        memo: _memo,
        imagePath: _imageFile?.path,
      );

      if (widget.recordToEdit == null) {
        // 新規作成
        await FruitRecordLogic.saveRecord(newRecord);
      } else {
        // 編集（既存データの置き換え）
        await FruitRecordLogic.updateRecord(widget.recordToEdit as int, newRecord);
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('保存しました')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => FruitRecordListScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recordToEdit == null ? '果物狩りの記録' : '記録の編集'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text(DateFormat('yyyy-MM-dd').format(_selectedDate)),
              TextButton(
                onPressed: _pickDate,
                child: Text('日付を選ぶ'),
              ),
              TextFormField(
                initialValue: _fruitType,
                decoration: InputDecoration(labelText: '果物の種類'),
                onSaved: (val) => _fruitType = val ?? '',
                validator: (val) => val!.isEmpty ? '必須です' : null,
              ),
              TextFormField(
                initialValue: _farmName,
                decoration: InputDecoration(labelText: '農園名'),
                onSaved: (val) => _farmName = val ?? '',
                validator: (val) => val!.isEmpty ? '必須です' : null,
              ),
              TextFormField(
                initialValue: _memo,
                decoration: InputDecoration(labelText: 'メモ（任意）'),
                onSaved: (val) => _memo = val,
              ),
              SizedBox(height: 16),
              _imageFile != null
                  ? Image.file(_imageFile!, height: 150)
                  : Container(height: 150, color: Colors.grey[300]),
              ElevatedButton.icon(
                onPressed: _pickImage,
                icon: Icon(Icons.photo),
                label: Text('写真を選ぶ'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveData,
                child: Text('保存'),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _saveData() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final record = FruitRecord(
        fruitType: _fruitType,
        farmName: _farmName,
        date: DateFormat('yyyy-MM-dd').format(_selectedDate),
        memo: _memo,
        imagePath: _imageFile?.path,
      );

      await FruitRecordLogic.saveRecord(record);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => FruitRecordListScreen()),
      );
    }
  }

  goFruitRecordListScreen(BuildContext context) {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => FruitRecordListScreen()));
  }
}




// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:fruit_hunter/view/screens/fruit_record_list_screen.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as p;
// import 'package:intl/intl.dart';
// import '../components/fruit_record.dart';
// import '../components/fruit_record_logic.dart';
//
// class FruitRecordFormEditScreen extends StatefulWidget {
//   @override
//   State<FruitRecordFormEditScreen> createState() => _FruitRecordFormEditScreenState();
// }
//
// class _FruitRecordFormEditScreenState extends State<FruitRecordFormEditScreen> {
//   final _formKey = GlobalKey<FormState>();
//   String _fruitType = '';
//   String _farmName = '';
//   String? _memo;
//   File? _imageFile;
//
//   Future<void> _pickImage() async {
//     final picker = ImagePicker();
//     final picked = await picker.pickImage(source: ImageSource.gallery);
//
//     if (picked != null) {
//       final directory = await getApplicationDocumentsDirectory();
//       final fileName = p.basename(picked.path);
//       final savedImage =
//           await File(picked.path).copy('${directory.path}/$fileName');
//
//       setState(() {
//         _imageFile = savedImage;
//       });
//     }
//   }
//
//   DateTime _selectedDate = DateTime.now();
//
//   Future<void> _pickDate() async {
//     final picked = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2100),
//     );
//     if (picked != null) {
//       setState(() {
//         _selectedDate = picked;
//       });
//     }
//   }
//
//   Future<void> _saveData() async {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//
//       final record = FruitRecord(
//         fruitType: _fruitType,
//         farmName: _farmName,
//         date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
//         memo: _memo,
//         imagePath: _imageFile?.path,
//       );
//
//       await FruitRecordLogic.saveRecord(record);
//
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('保存しました')));
//       Navigator.pop(context);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         child: Text("ログ"),
//         onPressed: () => goFruitRecordListScreen(context),
//       ),
//       appBar: AppBar(
//         title: Text('果物狩りの記録'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: [
//               Text(DateFormat('yyyy-MM-dd').format(_selectedDate)),
//               TextButton(
//                 onPressed: _pickDate,
//                 child: Text('日付を選ぶ'),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: '果物の種類'),
//                 onSaved: (val) => _fruitType = val ?? '',
//                 validator: (val) => val!.isEmpty ? '必須です' : null,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: '農園名'),
//                 onSaved: (val) => _farmName = val ?? '',
//                 validator: (val) => val!.isEmpty ? '必須です' : null,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'メモ（任意）'),
//                 onSaved: (val) => _memo = val,
//               ),
//               SizedBox(height: 16),
//               _imageFile != null
//                   ? Image.file(_imageFile!, height: 150)
//                   : Container(height: 150, color: Colors.grey[300]),
//               ElevatedButton.icon(
//                 onPressed: _pickImage,
//                 icon: Icon(Icons.photo),
//                 label: Text('写真を選ぶ'),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _saveData,
//                 child: Text('保存'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   Future<void> _save() async {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//
//       final record = FruitRecord(
//         fruitType: _fruitType,
//         farmName: _farmName,
//         date: DateFormat('yyyy-MM-dd').format(_selectedDate),
//         memo: _memo,
//         imagePath: _imageFile?.path,
//       );
//
//       await FruitRecordLogic.saveRecord(record);
//
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => FruitRecordListScreen()),
//       );
//     }
//   }
//
//   goFruitRecordListScreen(BuildContext context) {
//     Navigator.pushReplacement(context,
//         MaterialPageRoute(builder: (context) => FruitRecordListScreen()));
//   }
// }
