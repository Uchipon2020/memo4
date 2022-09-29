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
            const Text('詳細'),
            Text(_memo.title),
          ],
        ),
      ),
    );
  }
}
