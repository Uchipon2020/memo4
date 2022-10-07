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
      body: Padding(
        padding: const EdgeInsets.only(top:15.0, left:10.0, right: 10.0),
          child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.accessibility),
                    title: Text(
                      '身長   ${_memo.height}  cm',
                     /* textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),*/
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.edit),
                    title: Text(
                      '体重   ${_memo.weight}  kg',
                    /*  textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),*/
                    ),
                  ),



              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '栄養状態  ${_memo.stateOfNutrition} ',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '脊柱の病気   ${_memo.spinalColumnNote}',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),



                    ListTile(
                      leading: const Icon(Icons.accessibility),
                      title: Text(
                        '右目（裸眼）   ${_memo.rightEye}',
                      //  textAlign: TextAlign.center,
                        //style: const TextStyle(
                          //fontSize: 20.0,
                        //),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.accessibility),
                      title: Text(
                        '左目（裸眼） ${_memo.leftEye}',
                        /*textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),*/
                      ),
                    ),


                  ListTile(
                    leading: const Icon(Icons.accessibility),
                    title: Text(
                      '右目矯正 ${_memo.rightCorrectedEye}',
                      /*textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20.0,
                            ),
*/
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.accessibility),
                    title: Text(
                      '左目矯正 ${_memo.leftCorrectedEye}',
                      //textAlign: TextAlign.center,
                      //style: const TextStyle(
                       // fontSize: 20.0,
                    //  ),
                    ),
                  ),



              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '目の病気 ${_memo.eyeDisease} ',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: Text(
                  '耳の病気 ${_memo.earDisease}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
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

    );
  }
}
