import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memo/models/memo.dart';

class AddEditMemoScreen extends StatefulWidget {
  const AddEditMemoScreen({Key? key, this.currentMemo}) : super(key: key);
  final Memos? currentMemo;
  @override
  AddEditMemoScreenState createState() => AddEditMemoScreenState();
}
class AddEditMemoScreenState extends State<AddEditMemoScreen>{

  TextEditingController titleController = TextEditingController();
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
  TextEditingController urinaryProteinController = TextEditingController();
  TextEditingController urinarySugarController = TextEditingController();
  TextEditingController urineController = TextEditingController();
  TextEditingController othersController = TextEditingController();
  TextEditingController other2Controller = TextEditingController();
  TextEditingController schoolDoctorController = TextEditingController();
  TextEditingController rightEar1000Controller = TextEditingController();
  TextEditingController leftEar1000Controller = TextEditingController();
  TextEditingController rightEar4000Controller = TextEditingController();
  TextEditingController leftEar4000Controller = TextEditingController();


  Future<void> save() async {
     final memoCollection =  FirebaseFirestore.instance.collection('memoTest');
    await memoCollection.add({
      'title': titleController.text, //タイトル
      'height': heightController.text, //身長
      'weight': weightController.text, //体重
      'stateOfNutrition': stateOfNutritionController.text, //栄養状態
      'spinalColumnNote':
          spinalColumnNoteController.text, //脊柱及び侠客の疾病及び異常の有無並び四肢の状態
      'rightEye': rightEyeController.text, //視力右
      'leftEye': leftEyeController.text, //視力左
      'rightCorrectedEye': rightCorrectedEyeController.text, //矯正視力右
      'leftCorrectedEye': leftCorrectedEyeController.text, //矯正視力左
      'eyeDisease': eyeDiseaseController.text, //目の疾病
      'earDisease': earDiseaseController.text, //耳の疾病
      'skinDisease': skinDiseaseController.text, //皮膚の病気
      'tuberculosisDisease': tuberculosisController.text, //結核の所見
      'heartDisease': heartDiseaseController.text, //心臓の所見の有無
      'urinaryProtein': urinaryProteinController.text, //尿蛋白
      'urinarySugar': urinarySugarController.text, //尿糖
      'urine': urineController, //その他の尿検査
      'schoolDoctor': schoolDoctorController.text, //校医所見
      'createdTime': Timestamp.now(),
      'updated': Timestamp.now(),
      'rightEar1000': rightEar1000Controller.text, //聴力　右1000
      'leftEar1000': leftEar1000Controller.text, //聴力　左1000
      'rightEar4000': rightEar4000Controller.text, //聴力　右4000
      'leftEar4000': leftEar4000Controller.text, //聴力　左4000
      'tuberculosis': tuberculosisController.text, //結核の有無
      'ecg': ecgController.text,

    });
  }

  Future<void> upData() async {
    final doc =
        FirebaseFirestore.instance.collection('memoTest').doc(widget.currentMemo!.id);
    await doc.update({
      'title': titleController.text, //タイトル
      'height': heightController.text, //身長
      'weight': weightController.text, //体重
      'stateOfNutrition': stateOfNutritionController.text, //栄養状態
      'spinalColumnNote':
      spinalColumnNoteController.text, //脊柱及び侠客の疾病及び異常の有無並び四肢の状態
      'rightEye': rightEyeController.text, //視力右
      'leftEye': leftEyeController.text, //視力左
      'rightCorrectedEye': rightCorrectedEyeController.text, //矯正視力右
      'leftCorrectedEye': leftCorrectedEyeController.text, //矯正視力左
      'eyeDisease': eyeDiseaseController.text, //目の疾病
      'earDisease': earDiseaseController.text, //耳の疾病
      'skinDisease': skinDiseaseController.text, //皮膚の病気
      'tuberculosisDisease': tuberculosisController.text, //結核の所見
      'heartDisease': heartDiseaseController.text, //心臓の所見の有無
      'urinaryProtein': urinaryProteinController.text, //尿蛋白
      'urinarySugar': urinarySugarController.text, //尿糖
      'urine': urineController, //その他の尿検査
      'schoolDoctor': schoolDoctorController.text, //校医所見
      'updated': Timestamp.now(),
      'rightEar1000': rightEar1000Controller.text, //聴力　右1000
      'leftEar1000': leftEar1000Controller.text, //聴力　左1000
      'rightEar4000': rightEar4000Controller.text, //聴力　右4000
      'leftEar4000': leftEar4000Controller.text, //聴力　左4000
      'tuberculosis': tuberculosisController.text, //結核の有無
      'ecg': ecgController.text,
    });
  }

void initState() {
    if (widget.currentMemo != null) {
      titleController.text = widget.currentMemo!.title;
      heightController.text = widget.currentMemo!.height.toString();
      weightController.text = widget.currentMemo!.weight.toString();
    }
  }
  @override
  Widget build(BuildContext context) {
    //initState();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.currentMemo == null ? '新規作成' : '編集'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 5),
              const Text('タイトル'),
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
              const SizedBox(height: 5),
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
              const SizedBox(height: 5),
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
              const SizedBox(height: 5),
              const Text('栄養状態'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: stateOfNutritionController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('脊柱及び胸郭の疾病及び異常の有無　並び四肢の状態'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: spinalColumnNoteController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('裸眼視力　右'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: rightEyeController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('裸眼視力　左'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: leftEyeController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('矯正視力　右'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: rightCorrectedEyeController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('矯正視力　左'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: leftCorrectedEyeController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('目の疾病'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: eyeDiseaseController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('耳の疾病'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: earDiseaseController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),

              /////////途中

              const SizedBox(height: 5),
              const Text('皮膚の病気'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: other2Controller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('結核の所見'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: tuberculosisController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('心臓所見'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: ecgController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('尿蛋白'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: urinaryProteinController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('尿糖'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: urinarySugarController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('その他の尿検査'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: urineController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('校医コメント'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: schoolDoctorController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('保健室コメント'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: other2Controller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('その他'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: othersController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),

//////boolエリア(予定）

              const SizedBox(height: 5),
              const Text('右耳1000'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child:TextField(
                    controller: right1000EarController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('左耳1000'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: left1000EarController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('右耳4000'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: right4000EarController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('左耳4000'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: left4000EarController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('結核の有無'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: tuberculosisController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('心電図所見の有無'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    controller: ecgController,
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
                    widget.currentMemo == null ? await save() : await upData();
                  },
                  child: Text(widget.currentMemo == null ? '保存' : '編集終了')),
            ],
          ),
        ),
      ),

    );

  }
}
