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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ListTile(
                  leading: const Icon(Icons.accessibility),
                  title: Text(
                      '身長 ${_memo.height} cm',
                      ),
                  ),
              ),

              ListTile(
                leading: const Icon(Icons.edit),
                title: Text('体重 ${_memo.weight} kg'),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '栄養状態 ${_memo.stateOfNutrition} ',
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '脊柱の病気 ${_memo.spinalColumnNote}',
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '右目（裸眼） ${_memo.rightEye}',
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '左目（裸眼） ${_memo.leftEye}',
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '右目矯正 ${_memo.rightCorrectedEye}',
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '左目矯正 ${_memo.leftCorrectedEye}',
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '目の病気 ${_memo.eyeDisease} ',
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '耳の病気 ${_memo.earDisease}',
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '心臓の所見 ${_memo.ecg} ',
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '尿検査所見 ${_memo.urineNote}',
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  'その他 ${_memo.others}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
