import 'package:flutter/material.dart';
import 'package:memo/models/memo.dart';

class MemoDetailPage extends StatelessWidget {
  static String id = 'memo_detail_screen';
  final Memos _memo;
  MemoDetailPage(this._memo, {Key? key}) : super(key: key);
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController stateOfNutritionController = TextEditingController();
  TextEditingController spinalColumnNoteController = TextEditingController();
  TextEditingController rightEyeController = TextEditingController();
  TextEditingController leftEyeController = TextEditingController();
  TextEditingController rightCorrectedEyeController = TextEditingController();
  TextEditingController leftCorrectedEyeController = TextEditingController();
  TextEditingController eyeDiseaseController = TextEditingController();
  TextEditingController right1000EarController = TextEditingController();
  TextEditingController right4000EarController = TextEditingController();
  TextEditingController left1000EarController = TextEditingController();
  TextEditingController left4000EarController = TextEditingController();
  TextEditingController earDiseaseController = TextEditingController();
  TextEditingController skinDiseaseController = TextEditingController();
  TextEditingController tuberculosisController = TextEditingController();
  TextEditingController tuberculosisDayController = TextEditingController();
  TextEditingController heartDiseaseController = TextEditingController();
  TextEditingController ecgController = TextEditingController();
  TextEditingController urineNoteController = TextEditingController();
  TextEditingController othersController = TextEditingController();
  TextEditingController other2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    heightController.text = _memo.height.toString();
    weightController.text = _memo.weight.toString();
    stateOfNutritionController.text = _memo.stateOfNutrition.toString();
    spinalColumnNoteController.text = _memo.spinalColumnNote.toString();
    rightEyeController.text = _memo.rightEye.toString();
    leftEyeController.text = _memo.leftEye.toString();
    rightCorrectedEyeController.text = _memo.rightCorrectedEye.toString();
    leftCorrectedEyeController.text = _memo.leftCorrectedEye.toString();
    eyeDiseaseController.text = _memo.eyeDisease.toString();
    earDiseaseController.text = _memo.earDisease.toString();
    skinDiseaseController.text = _memo.skinDisease.toString();
    tuberculosisController.text = _memo.tuberculosis.toString();
    tuberculosisDayController.text = _memo.tuberculosisDay.toString();
    heartDiseaseController.text = _memo.heartDisease.toString();
    ecgController.text = _memo.ecg.toString();
    urineNoteController.text = _memo.urineNote.toString();
    othersController.text = _memo.others.toString();
    other2Controller.text = _memo.other2.toString();

    _memo.rightEar1000 == true
        ? right1000EarController.text = '所見あり'
        : right1000EarController.text = '異常なし';
    _memo.rightEar4000 == true
        ? right4000EarController.text = '所見あり'
        : right4000EarController.text = '異常なし';
    _memo.leftEar1000 == true
        ? left1000EarController.text = '所見あり'
        : left1000EarController.text = '異常なし';
    _memo.leftEar4000 == true
        ? left4000EarController.text = '所見あり'
        : left4000EarController.text = '異常なし';
    _memo.ecg == true
        ? ecgController.text = '所見あり'
        : ecgController.text = '異常なし';

    return Scaffold(
      appBar: AppBar(
        title: Text(_memo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
        child: ListView(
          children: [
            /*------------------------------身長体重----------------*/
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: heightController,
                        textAlign: TextAlign.right,
                        enabled: false,
                        decoration: const InputDecoration(
                          labelText: '身長',
                          suffix: Text('cm'),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: weightController,
                        enabled: false,
                        textAlign: TextAlign.right,
                        decoration: const InputDecoration(
                          labelText: '体重',
                          suffix: Text('kg'),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            //
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: stateOfNutritionController,
                    enabled: false,
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      labelText: '栄養状態',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            /*----------------------------　 脊柱胸郭四肢 ---*/
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: stateOfNutritionController,
                    enabled: false,
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      labelText: '脊柱・胸郭・四肢',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            /*-----------------------------　視力関連　-----*/
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: rightEyeController,
                            enabled: false,
                            textAlign: TextAlign.right,
                            decoration: const InputDecoration(
                              labelText: '右目（裸眼）',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: leftCorrectedEyeController,
                            enabled: false,
                            textAlign: TextAlign.right,
                            decoration: const InputDecoration(
                              labelText: '左目（矯正）',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: rightCorrectedEyeController,
                            enabled: false,
                            textAlign: TextAlign.right,
                            decoration: const InputDecoration(
                              labelText: '右目（矯正）',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: leftEyeController,
                            enabled: false,
                            textAlign: TextAlign.right,
                            decoration: const InputDecoration(
                              labelText: '左（裸眼）',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0, left: 0.8, bottom: 10.0),
                    child: TextField(
                      controller: eyeDiseaseController,
                      enabled: false,
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        labelText: '目の病気',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),

            /*-----------------------------　聴力関連　-----*/
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: right1000EarController,
                            enabled: false,
                            textAlign: TextAlign.right,
                            decoration: const InputDecoration(
                              labelText: '右耳 1000Hz（低音）',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: right4000EarController,
                            enabled: false,
                            textAlign: TextAlign.right,
                            decoration: const InputDecoration(
                              labelText: '右耳 4000Hz（高音）',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: left1000EarController,
                            enabled: false,
                            textAlign: TextAlign.right,
                            decoration: const InputDecoration(
                              labelText: '左耳 1000Hz（低音）',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: left4000EarController,
                            enabled: false,
                            textAlign: TextAlign.right,
                            decoration: const InputDecoration(
                              labelText: '左耳 4000Hz（高音）',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0, left: 0.8, bottom: 10.0),
                    child: TextField(
                      controller: earDiseaseController,
                      enabled: false,
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        labelText: '耳の病気',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),

            /*----------------------------- 皮膚疾患　------*/
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: ListTile(
                title: TextField(
                  controller: skinDiseaseController,
                  enabled: false,
                  textAlign: TextAlign.right,
                  decoration: const InputDecoration(
                    labelText: '皮膚疾患',
                    filled: true,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),

            /*----------------------------- 結核 --------- */
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: ListTile(
                title: TextField(
                  controller: urineNoteController,
                  enabled: false,
                  textAlign: TextAlign.right,
                  decoration: const InputDecoration(
                    labelText: '結核',
                    filled: true,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),

            /*-----------------------------　心電図関連　---- */
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: TextField(
                      controller: ecgController,
                      enabled: false,
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        labelText: '心電図検査結果',
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  ListTile(
                    title: TextField(
                      controller: heartDiseaseController,
                      enabled: false,
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        labelText: '心臓の疾患および異常',
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),

            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: ListTile(
                title: TextField(
                  controller: othersController,
                  enabled: false,
                  textAlign: TextAlign.right,
                  decoration: const InputDecoration(
                    labelText: 'その他',
                    filled: true,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
