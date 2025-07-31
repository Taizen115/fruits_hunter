import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:intl/intl.dart';
import '../../main.dart';
import '../components/fruit_record.dart';
import '../components/fruit_record_logic.dart';
import 'fruit_record_list_screen.dart';
import 'full_screen.dart';

class FruitRecordFormEditScreen extends StatefulWidget {
  final FruitRecord? recordToEdit;

  const FruitRecordFormEditScreen({this.recordToEdit});

  @override
  State<FruitRecordFormEditScreen> createState() =>
      _FruitRecordFormEditScreenState();
}

class _FruitRecordFormEditScreenState extends State<FruitRecordFormEditScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _fruitTypeController;
  late TextEditingController _farmNameController;
  late TextEditingController _memoController;

  File? _imageFile;
  DateTime _selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();

    final r = widget.recordToEdit;

    _fruitTypeController = TextEditingController(text: r?.fruitType ?? '');
    _farmNameController = TextEditingController(text: r?.farmName ?? '');
    _memoController = TextEditingController(text: r?.memo ?? '');
    _selectedDate =
        r != null ? DateFormat('yyyy-MM-dd').parse(r.date) : DateTime.now();

    if (r?.imagePath != null) {
      _imageFile = File(r!.imagePath!);
    }
  }

  @override
  void dispose() {
    _fruitTypeController.dispose();
    _farmNameController.dispose();
    _memoController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      final directory = await getApplicationDocumentsDirectory();
      final fileName = p.basename(picked.path);
      final savedImage =
          await File(picked.path).copy('${directory.path}/$fileName');
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
      final isEdit = widget.recordToEdit != null;
      final id = isEdit
          ? widget.recordToEdit!.id!
          : DateTime.now().millisecondsSinceEpoch;

      final newRecord = FruitRecord(
        id: id,
        fruitType: _fruitTypeController.text.trim(),
        farmName: _farmNameController.text.trim(),
        date: DateFormat('yyyy-MM-dd').format(_selectedDate),
        memo: _memoController.text.trim(),
        imagePath: _imageFile?.path,
      );

      if (isEdit) {
        await FruitRecordLogic.updateRecord(id, newRecord);
      } else {
        await FruitRecordLogic.saveRecord(newRecord);
      }

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => FruitRecordListScreen()),
      );
    }
  }

  void _goToListScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => FruitRecordListScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        child: Icon(Icons.list_rounded),
        onPressed: _goToListScreen,
      ),
      appBar: AppBar(
        title: Text(widget.recordToEdit == null ? '果物狩りの記録' : '記録の編集',
            style: TextStyle(color: Colors.lightBlue)),
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
                child: Text(
                  '日付を選ぶ',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ),
              TextFormField(
                controller: _fruitTypeController,
                decoration: InputDecoration(
                    labelText: '果物の種類',
                    labelStyle: TextStyle(color: Colors.lightBlue)),
                validator: (val) => val!.trim().isEmpty ? '必須です' : null,
              ),
              TextFormField(
                controller: _farmNameController,
                decoration: InputDecoration(
                    labelText: '農園名',
                    labelStyle: TextStyle(color: Colors.lightBlue)),
                validator: (val) => val!.trim().isEmpty ? '必須です' : null,
              ),
              TextFormField(
                controller: _memoController,
                decoration: InputDecoration(
                    labelText: 'メモ（任意）',
                    labelStyle: TextStyle(color: Colors.lightBlue)),
              ),
              SizedBox(height: 16),
              _imageFile != null
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                FullScreen(imageFile: _imageFile!),
                          ),
                        );
                      },
                      child: Image.file(_imageFile!,
                          height: 225, fit: BoxFit.cover),
                    )
                  : Container(height: 225, color: Colors.grey[300]),
              ElevatedButton.icon(
                onPressed: _pickImage,
                icon: Icon(Icons.photo),
                label: Text(
                  '写真を選ぶ',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _save,
                child: Text(
                  '保存',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
