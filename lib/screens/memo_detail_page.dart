import 'package:flutter/material.dart';
import 'package:memo/models/memo.dart';

class MemoDetailPage extends StatelessWidget {
  static const id = 'memo_detail_page';
  final Memo memo;
  const MemoDetailPage(this.memo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(memo.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('詳細'),
            Text(memo.detail),
          ],
        ),
      ),
    );
  }
}
