import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:memo/models/memo.dart';

class MemoDetailPage extends StatelessWidget {
  static String id = 'memo_detail_screen';
  final Memos _memo;
  const MemoDetailPage(this._memo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_memo.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: const Icon(Icons.edit),
              title: Text('身長 ${_memo.height} cm'),
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: Text('体重 ${_memo.weight} kg'),
            ),
          ],
        ),
      ),
    );
  }
}
