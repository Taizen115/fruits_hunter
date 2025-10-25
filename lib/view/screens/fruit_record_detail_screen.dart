import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../../generated/l10n.dart';
import '../../main.dart';
import 'fruit_record_master_screen.dart';
import 'full_screen.dart';
import 'package:uuid/uuid.dart';
import '../../db/database.dart';

enum FruitRecordOpenMode { NEW, EDIT }

enum RecordToEdit { NULL, RECORD }

class FruitRecordDetailScreen extends StatefulWidget {
  final FruitRecord? recordToEdit;
  final FruitRecordOpenMode openMode;

  const FruitRecordDetailScreen(
      {required this.recordToEdit, required this.openMode});

  @override
  State<FruitRecordDetailScreen> createState() =>
      _FruitRecordDetailScreenState();
}

class _FruitRecordDetailScreenState extends State<FruitRecordDetailScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _dateController;
  late TextEditingController _fruitTypeController;
  late TextEditingController _farmNameController;
  late TextEditingController _memoController;

  List<File> _imageFiles = [];

  // File? _imageFile;
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

    final recordToEdit = widget.recordToEdit;

    _fruitTypeController =
        TextEditingController(text: recordToEdit?.fruitType ?? '');
    _farmNameController =
        TextEditingController(text: recordToEdit?.farmName ?? '');
    _memoController = TextEditingController(text: recordToEdit?.memo ?? '');

    if (recordToEdit != null) {
      _selectedDate = DateFormat('yyyy-MM-dd').parse(recordToEdit.date);
      _dateController = TextEditingController(
          text: DateFormat('yyyy-MM-dd').format(_selectedDate),);

    } else {
      _selectedDate = DateTime.now();
      _dateController = TextEditingController(text: '');
    }

    // _selectedDate = (recordToEdit != null)
    //     ? DateFormat('yyyy-MM-dd').parse(recordToEdit.date)
    //     : DateTime.now();

    // _dateController = TextEditingController(
    //     text: DateFormat('yyyy-MM-dd').format(_selectedDate));

    if ((recordToEdit != null) && (recordToEdit.imagePaths != null)) {
      final fileNames = recordToEdit.imagePaths!.split(",");

      for (final imageFileName in fileNames) {
        if (imageFileName.isEmpty || imageFileName == "no_photo.png") {
          continue;
        }
        //TODO ファイル名からパスへの変換
        final path = p.join(appDirectoryPath, imageFileName);
        _imageFiles.add(File(path));
      }
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
    _dateController.dispose();

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

  Future<void> _pickImages() async {

    final picker = ImagePicker();
    ///追加
    final pickedList = await picker.pickMultiImage(
      maxWidth: 2048,
      maxHeight: 2048,
      imageQuality: 85,
    );

    if (pickedList.isEmpty) return;

    final directory = await getApplicationDocumentsDirectory();
    final savedImages = <File>[];

    for (final picked in pickedList) {

      ///ファイル名衝突をさける
      final ext = p.extension(picked.path);
      final fileName = '${const Uuid().v1()}$ext';
      final dstPath = p.join(directory.path, fileName);

      ///単純コピー
      final savedImage = await File(picked.path).copy(dstPath);
      savedImages.add(savedImage);
    }

    if (!mounted) return;
    setState(() {
      _imageFiles.addAll(savedImages);
    });
  }

  //   final pickedList = await picker.pickMultiImage();
  //   if (pickedList.isNotEmpty) {
  //     final directory = await getApplicationDocumentsDirectory();
  //     List<File> savedImages = [];
  //     for (var picked in pickedList) {
  //       final fileName = p.basename(picked.path);
  //       final savedImage =
  //           await File(picked.path).copy('${directory.path}/$fileName');
  //       savedImages.add(savedImage);
  //     }
  //     setState(() {
  //       _imageFiles.addAll(savedImages);
  //     });
  //   }
  // }

  // パーツ	意味
  // showDatePicker()	📅 カレンダー画面を出すFlutterの関数
  // context	アプリの画面情報（必須）
  // initialDate	カレンダーを開いたときに最初に表示する日付（今回は選ばれている日）
  // firstDate	選べる最も古い日（1950年）
  // lastDate	選べる最も新しい日（2100年）
  // await	ユーザーが選び終わるまで待つ

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  ///画像の削除

  void _deleteImage(int index) async {
    if (_imageFiles[index].existsSync()) {
      try {
        await _imageFiles[index].delete();
      } catch (e) {
        //画像削除に失敗
        print(S.of(context)!.photoMessage1);
      }
    }
    setState(() {
      _imageFiles.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return MediaQuery(
      data: mq.copyWith(textScaler: const TextScaler.linear(1.2)),
      child: SafeArea(
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
              onTap: () => _goFruitRecordMasterScreen(),
            ),

            // '果物狩りの記録' : '記録の編集'
            title: Text(
                widget.recordToEdit == null
                    ? S.of(context)!.fruitPickingRecord
                    : S.of(context)!.editRecord,
                style: TextStyle(color: Colors.teal)),
            centerTitle: true,
            actions: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child:
                      FaIcon(FontAwesomeIcons.shareNodes, color: Colors.teal),
                ),
                onTap: () => _shareRecord(),
              ),
              if (widget.openMode == FruitRecordOpenMode.EDIT)
                IconButton(
                  tooltip: S.of(context)!.deleteRecord0, // 「記録の消去」
                  icon: const Icon(Icons.delete, color: Colors.grey),

                  ///以下に記載の関数
                  onPressed: _deleteThisRecord,
                ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              ///追加
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: ListView(
                children: [
                  // Gap(10.0),
                  // Text(DateFormat('yyyy-MM-dd').format(_selectedDate)),
                  Gap(20.0),

                  TextFormField(
                    controller: _dateController,
                    readOnly: true,
                    enabled: true,
                    onTap: _pickDate,
                    decoration: InputDecoration(
                      labelText: S.of(context)!.pickADate,
                      labelStyle: const TextStyle(color: Colors.teal),
                    ),
                    validator: (val) {
                      return (val == null || val.trim().isEmpty)
                          ? S.of(context)!.required
                          : null;
                    },
                  ),
                  TextFormField(
                    controller: _fruitTypeController,
                    decoration: InputDecoration(
                        labelText: S.of(context)!.fruitType,
                        labelStyle:
                            TextStyle(color: Colors.teal, fontSize: 15.0)),
                    //必須= required
                    validator: (val) =>
                        val!.trim().isEmpty ? S.of(context)!.required : null,
                  ),
                  TextFormField(
                    controller: _farmNameController,
                    decoration: InputDecoration(
                        labelText: S.of(context)!.farmName,
                        labelStyle:
                            TextStyle(color: Colors.teal, fontSize: 15.0)),
                    validator: (val) =>
                        val!.trim().isEmpty ? S.of(context)!.required : null,
                  ),
                  TextFormField(
                    controller: _memoController,
                    decoration: InputDecoration(
                        labelText: S.of(context)!.memo,
                        labelStyle:
                            TextStyle(color: Colors.teal, fontSize: 15.0)),
                  ),
                  Gap(15.0),
                  _imageFiles.isNotEmpty
                      ? Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: List.generate(
                            _imageFiles.length,
                            (index) {
                              final file = _imageFiles[index];
                              return Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              FullScreen(imageFile: file)),
                                    ),
                                    child: Image.file(file,
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: GestureDetector(
                                      onTap: () => _deleteImage(index),
                                      child: Container(
                                        color: Colors.black54,
                                        child: Icon(Icons.close,
                                            color: Colors.white, size: 20),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        )
                      : InkWell(
                    onTap: _pickImages,
                        child: Image.asset("assets/record/no_photo.png",
                            width: 200, height: 200),
                      ),
                  Gap(20.0),
                  ElevatedButton.icon(
                    onPressed: _pickImages,
                    icon: Icon(
                      Icons.photo,
                      color: Colors.teal,
                    ),
                    label: Text(S.of(context)!.pickAPhoto,
                        style: TextStyle(color: Colors.teal)),
                  ),
                  Gap(20.0),
                  ElevatedButton(
                    onPressed: () async {
                      //保存ボタンを押した！


                      if (!_formKey.currentState!.validate()) return; {
                        ///追加
                        final dateStr =
                            DateFormat('yyyy-MM-dd').format(_selectedDate);

                        final updated = FruitRecord(
                          // id: Uuid().v1(),
                          id: widget.recordToEdit?.id ?? Uuid().v1(),
                          fruitType: _fruitTypeController.text.trim(),
                          farmName: _farmNameController.text.trim(),
                          date: dateStr,
                          // date: DateFormat('yyyy-MM-dd').format(_selectedDate),
                          memo: _memoController.text.trim(),
                          imagePaths: _imageFiles.isNotEmpty
                              ? _imageFiles
                                  .map((file) {
                                    return p.basename(file.path);
                                    //return file.path;
                                  })
                                  .toList()
                                  .join(",")
                              : "no_photo.png",
                        );

                        // await database.updateFruitRecord(updated);

                        if (widget.openMode == FruitRecordOpenMode.EDIT) {
                          await database.updateFruitRecord(updated);
                        } else {
                          await database.insertFruitRecord(updated);
                        }
                        Fluttertoast.showToast(
                            msg: S.of(context)!.photoMessage2);
                        Navigator.pop(context, true);
                      }
                    },
                    child: Text(
                      S.of(context)!.save,
                      style: TextStyle(
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _goFruitRecordMasterScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FruitRecordMasterScreen(),
      ),
    );
    initAd();
  }

// 修正後の _shareRecord メソッド
  Future<void> _shareRecord() async {
    final recordText = '''
${S.of(context)!.shareTitle}
${S.of(context)!.shareDate(
              S.of(context)!.pickADate,
              DateFormat('yyyy-MM-dd').format(_selectedDate),
            )}
${S.of(context)!.shareFruitType(
              S.of(context)!.fruitType,
              _fruitTypeController.text,
            )}
${S.of(context)!.shareFarmName(
              S.of(context)!.farmName,
              _farmNameController.text,
            )}
${S.of(context)!.shareMemo(
              S.of(context)!.memo,
              _memoController.text,
            )}

${S.of(context)!.shareHashtags}
''';

    // フォームの内容をテキストにまとめる
    // final recordText = '''
// 🍓✨ #果物狩りに行ってきました　✨🍇
// 📅${S.of(context).PickADate}: ${DateFormat('yyyy-MM-dd').format(_selectedDate)}
// 🤩${S.of(context).FruitType}: ${_fruitTypeController.text}
// 🌳${S.of(context).FarmName}: ${_farmNameController.text}
//
// 📝${S.of(context).Memo}: ${_memoController.text}
//
// #果物狩り #フルーツ #いちご狩り #ぶどう狩り #果物狩りナビ
// ''';

    if (_imageFiles.isNotEmpty) {
      try {
        final xfiles = _imageFiles.map((f) => XFile(f.path)).toList();
        await Share.shareXFiles(xfiles, text: recordText);
        //記録をシェアしました
        Fluttertoast.showToast(msg: S.of(context)!.photoMessage3);
      } catch (e) {
        //画像シェア失敗
        print(S.of(context)!.photoMessage4);
      }
    } else {
      try {
        await Share.share(recordText);
        //記録をシェアしました
        Fluttertoast.showToast(msg: S.of(context)!.photoMessage3);
      } catch (e) {
        //テキストシェア失敗
        print(S.of(context)!.photoMessage5);
      }
    }
  }

  ///追加
  Future<void> _deleteThisRecord() async {
    // 新規作成モードでは削除できない
    if (widget.recordToEdit == null) return;

      final ok = await showDialog<bool>(
          context: context,
          builder: (_) => AlertDialog(
            title: Text(
              S.of(context)!.deleteRecord0,
              style: TextStyle(fontSize: 20.0),
            ),
            // 「記録の消去」
            content: Text(S.of(context)!.deleteRecord1,
                style: TextStyle(color: Colors.black54, fontSize: 15.0)),
            // 「記録を消去しますか？」
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                onPressed: () => Navigator.pop(context, false),
                child: Text(S.of(context)!.cancel),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.teal,
                ),
                onPressed: () => Navigator.pop(context, true),
                child: Text(S.of(context)!.ok),
              ),
            ],
          ),
        ) ??
        false;

    if (!ok) return;

    // 画像も消したい場合（同じファイルを他記録で共有していない前提）
    for (final f in List<File>.from(_imageFiles)) {
      if (await f.exists()) {
        try {
          await f.delete();
        } catch (_) {
          /* 失敗は無視でも可 */
        }
      }
    }

    // DB のレコードを削除
    await database.deleteFruitRecord(widget.recordToEdit!.id);

    Fluttertoast.showToast(msg: S.of(context)!.deleteRecord2); // 「消去しました」

    if (!mounted) return;
    Navigator.pop(context, true); // ← 一覧へ戻って再描画トリガー
  }
}
