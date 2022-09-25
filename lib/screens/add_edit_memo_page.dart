import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddEditMemoPage extends StatelessWidget {
  AddEditMemoPage({Key? key}) : super(key: key);

  TextEditingController titleController = TextEditingController();
  TextEditingController detailController = TextEditingController();

  Future<void> save() async {
    final memoCollection =
        await FirebaseFirestore.instance.collection('memoTest');
    memoCollection.add({
      'title': titleController.text,
      'detail': detailController.text,
      'createtime': Timestamp.now(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('入力画面'),
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
            const Text('詳細入力'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  controller: detailController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await save();
                  Navigator.pop(context);
                },
                child: const Text('保存')),
          ],
        ),
      ),
    );
  }
}
