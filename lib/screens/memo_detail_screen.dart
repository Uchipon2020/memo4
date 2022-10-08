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
  TextEditingController earDiseaseController = TextEditingController();
  TextEditingController tuberculosisController = TextEditingController();
  TextEditingController tuberculosisDayController = TextEditingController();
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
    tuberculosisController.text = _memo.tuberculosis.toString();
    tuberculosisDayController.text = _memo.tuberculosisDay.toString();
    ecgController.text = _memo.ecg.toString();
    urineNoteController.text = _memo.urineNote.toString();
    othersController.text = _memo.others.toString();
    other2Controller.text = _memo.other2.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(_memo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
        child: ListView(
          children: [
            /*-身長体重----------------*/
            Row(
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
            //const SizedBox(height: 10),
            Expanded(
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

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: stateOfNutritionController,
                  enabled: false,
                  textAlign: TextAlign.right,
                  decoration: const InputDecoration(
                    labelText: '脊柱の病気',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            /*-視力関連----------------*/
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0 , color: Colors.grey),
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
                  ListTile(
                      title: TextField(
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
            ListTile(
              title: TextField(
                controller: earDiseaseController,
                enabled: false,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  labelText: '耳の病気',
                  filled: true,
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: ecgController,
                enabled: false,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  labelText: '心臓の病気',
                  filled: true,
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: urineNoteController,
                enabled: false,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  labelText: '尿検査所見',
                  filled: true,
                ),
              ),
            ),
            ListTile(
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
          ],
        ),
      ),
    );
  }
}
