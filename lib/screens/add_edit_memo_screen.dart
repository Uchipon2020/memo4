import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memo/models/memo.dart';

class AddEditMemoScreen extends StatelessWidget {
  final Memos? currentMemo;
  AddEditMemoScreen({Key? key, this.currentMemo}) : super(key: key);

  TextEditingController titleController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  Future<void> save() async {
    final memoCollection = FirebaseFirestore.instance.collection('memoTest');
    memoCollection.add({
      'title': titleController.text,
      'height': heightController.text,
      'weight': weightController.text,
      'createdTime': Timestamp.now(),
    });
  }

  Future<void> upData() async {
    final doc =
        FirebaseFirestore.instance.collection('memoTest').doc(currentMemo!.id);
    await doc.update({
      'title': titleController.text,
      'height': heightController.text,
      'weight': weightController.text,
      'createdTime': Timestamp.now(),
    });
  }

  void initState() {
    if (currentMemo != null) {
      titleController.text = currentMemo!.title;
      titleController.text = currentMemo!.height;
      titleController.text = currentMemo!.weight;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentMemo == null ? '修正' : '新規登録'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text('title'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('身長入力'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  controller: heightController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('体重'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  controller: weightController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  Navigator.pop(context);
                  await save();
                },
                child: const Text('保存')),
          ],
        ),
      ),
    );
  }
}
