import 'dart:io';
import 'package:flutter/material.dart';
import '../components/fruit_record.dart';
import '../components/fruit_record_logic.dart';
import 'fruit_record_form_edit_screen.dart';

class FruitRecordListScreen extends StatefulWidget {
  @override
  State<FruitRecordListScreen> createState() => _FruitRecordListScreenState();
}

class _FruitRecordListScreenState extends State<FruitRecordListScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ログ"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<FruitRecord>>(
        future: FruitRecordLogic.loadAllRecords(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          final records = snapshot.data!;

          return ListView.builder(
            itemCount: records.length,
            itemBuilder: (context, index) {
              final r = records[index];
              return Card(
                margin: EdgeInsets.all(8),
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FruitRecordFormEditScreen(
                            recordToEdit: r, // ← タップしたレコードを渡す
                          ),
                        ),
                      ).then((_) {
                        setState(() {}); // 編集後の再描画
                      });
                    },
                  leading: r.imagePath != null
                      ? Image.file(File(r.imagePath!), width: 60)
                      : null,
                  title: Text('${r.fruitType} @ ${r.farmName}'),
                  subtitle: Text('${r.date}\n${r.memo ?? ''}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () async {
                      await FruitRecordLogic.deleteRecord(index);
                      setState(() {}); // 🔁←正しい再描画の方法
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
