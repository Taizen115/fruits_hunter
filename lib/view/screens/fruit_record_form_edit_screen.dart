import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../generated/l10n.dart';
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

  //このコードは、**「前に書いた記録を、もう一度開いて、すぐに編集できるように準備するコード」**です。
  //
  //編集画面に渡された FruitRecord オブジェクトを r という変数に代入。
  // recordToEdit は null の可能性がある（＝新規作成の場合）。
  //
  //各テキスト入力欄（果物の種類・農園名・メモ）のための TextEditingController を初期化。
  // r が存在すればその内容を初期値に、なければ空文字に設定。
  //
  //日付選択用の _selectedDate を初期化。
  // r があれば、その日付文字列（例: "2025-08-01"）を DateTime に変換。
  // r がなければ、現在日時 DateTime.now() を使用。

  //画像パスが指定されていれば、File オブジェクトとして _imageFile にセット。
  // Dart の File はローカル画像を扱うために使う。
  // r! の ! は「null ではない」と明示している（少し危険なので慎重に使う必要あり）。

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

  ///広告
  void initAd() {
    adManager.initBannerAd();
    adManager.loadBannerAd();
  }

  @override
  void dispose() {
    _fruitTypeController.dispose();
    _farmNameController.dispose();
    _memoController.dispose();
    super.dispose();

    ///広告
    adManager.disposeBannerAd();
  }

  //ImagePicker()	写真選びの準備	ギャラリーを開くため
  // pickImage()	写真を選ぶ	ユーザーが画像を決める
  // getApplicationDocumentsDirectory()	保存先フォルダを探す	アプリ内にコピーするため
  // basename(path)	ファイル名を取り出す	保存先のファイル名を決める
  // File.copy()	画像をコピー	アプリの中で使えるようにする
  // setState()	画面を更新	選んだ画像を表示

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

  // パーツ	意味
  // showDatePicker()	📅 カレンダー画面を出すFlutterの関数
  // context	アプリの画面情報（必須）
  // initialDate	カレンダーを開いたときに最初に表示する日付（今回は選ばれている日）
  // firstDate	選べる最も古い日（2000年）
  // lastDate	選べる最も新しい日（2100年）
  // await	ユーザーが選び終わるまで待つ

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

  //if (_formKey.currentState!.validate()) {
  // 💡これは、「ちゃんと全部書いた？」を確認する部分。

  //final isEdit = widget.recordToEdit != null;
  // 💡「編集」か「新しい記録」かを判断します。
  // 編集なら、recordToEdit に元のデータが入ってます。
  // 新規なら、空っぽなので新しく作ります。

  //final id = isEdit
  //     ? widget.recordToEdit!.id!
  //     : DateTime.now().millisecondsSinceEpoch;
  // 💡記録を見分けるための番号を決めます。
  //
  // 編集 → 前のIDをそのまま使う
  // 新規 → 今の時間（ミリ秒）を使って自動でユニークなIDを作る

  //書いた内容をひとつにまとめたもの。**「記録ノート1ページ分」**と思ってください。
  // 果物の名前
  // 農園の名前
  // 行った日
  // メモ
  // 写真（選んでいれば）

  //if (isEdit) {
  //   await FruitRecordLogic.updateRecord(id, newRecord);
  // } else {
  //   await FruitRecordLogic.saveRecord(newRecord);
  // }
  // 💡保存のやり方が2つあります。
  //
  // 編集 → 前の記録を上書き（直す）
  // 新規 → 新しく追加する

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

      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => FruitRecordListScreen()),
      );
      initAd();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.teal,
              ),
            ),
            onTap: () => _goFruitRecordListScreen(),
          ),

          // '果物狩りの記録' : '記録の編集'
          title: Text(
              widget.recordToEdit == null
                  ? S.of(context).FruitPickingRecord
                  : S.of(context).EditRecord,
              style: TextStyle(color: Colors.teal)),
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
                    S.of(context).PickADate,
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
                TextFormField(
                  controller: _fruitTypeController,
                  decoration: InputDecoration(
                      labelText: S.of(context).FruitType,
                      labelStyle: TextStyle(color: Colors.teal)),
                  //必須
                  // validator: (val) => val!.trim().isEmpty ? 'Required' : null,
                  validator: (val) =>
                      val!.trim().isEmpty ? S.of(context).Required : null,
                ),
                TextFormField(
                  controller: _farmNameController,
                  decoration: InputDecoration(
                      labelText: S.of(context).FarmName,
                      labelStyle: TextStyle(color: Colors.teal)),
                  validator: (val) =>
                      val!.trim().isEmpty ? S.of(context).Required : null,
                ),
                TextFormField(
                  controller: _memoController,
                  decoration: InputDecoration(
                      labelText: S.of(context).Memo,
                      labelStyle: TextStyle(color: Colors.teal)),
                ),
                Gap(15.0),
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
                            height: 350, fit: BoxFit.cover),
                      )
                    : Container(height: 350, color: Colors.grey[300]),
                Gap(15.0),
                ElevatedButton.icon(
                  onPressed: _pickImage,
                  icon: Icon(Icons.photo),
                  label: Text(
                    S.of(context).PickAPhoto,
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
               Gap(20.0),
                ElevatedButton(
                  onPressed: _save,
                  child: Text(
                    S.of(context).Save,
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _goFruitRecordListScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FruitRecordListScreen(),
      ),
    );
    initAd();
  }
}
