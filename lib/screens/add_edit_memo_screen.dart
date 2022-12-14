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
      'title': titleController.text, //????????????
      'height': heightController.text, //??????
      'weight': weightController.text, //??????
      'stateOfNutrition': stateOfNutritionController.text, //????????????
      'spinalColumnNote':
          spinalColumnNoteController.text, //?????????????????????????????????????????????????????????????????????
      'rightEye': rightEyeController.text, //?????????
      'leftEye': leftEyeController.text, //?????????
      'rightCorrectedEye': rightCorrectedEyeController.text, //???????????????
      'leftCorrectedEye': leftCorrectedEyeController.text, //???????????????
      'eyeDisease': eyeDiseaseController.text, //????????????
      'earDisease': earDiseaseController.text, //????????????
      'skinDisease': skinDiseaseController.text, //???????????????
      'tuberculosisDisease': tuberculosisController.text, //???????????????
      'heartDisease': heartDiseaseController.text, //????????????????????????
      'urinaryProtein': urinaryProteinController.text, //?????????
      'urinarySugar': urinarySugarController.text, //??????
      'urine': urineController, //?????????????????????
      'schoolDoctor': schoolDoctorController.text, //????????????
      'createdTime': Timestamp.now(),
      'updated': Timestamp.now(),
      'rightEar1000': rightEar1000Controller.text, //????????????1000
      'leftEar1000': leftEar1000Controller.text, //????????????1000
      'rightEar4000': rightEar4000Controller.text, //????????????4000
      'leftEar4000': leftEar4000Controller.text, //????????????4000
      'tuberculosis': tuberculosisController.text, //???????????????
      'ecg': ecgController.text,

    });
  }

  Future<void> upData() async {
    final doc =
        FirebaseFirestore.instance.collection('memoTest').doc(widget.currentMemo!.id);
    await doc.update({
      'title': titleController.text, //????????????
      'height': heightController.text, //??????
      'weight': weightController.text, //??????
      'stateOfNutrition': stateOfNutritionController.text, //????????????
      'spinalColumnNote':
      spinalColumnNoteController.text, //?????????????????????????????????????????????????????????????????????
      'rightEye': rightEyeController.text, //?????????
      'leftEye': leftEyeController.text, //?????????
      'rightCorrectedEye': rightCorrectedEyeController.text, //???????????????
      'leftCorrectedEye': leftCorrectedEyeController.text, //???????????????
      'eyeDisease': eyeDiseaseController.text, //????????????
      'earDisease': earDiseaseController.text, //????????????
      'skinDisease': skinDiseaseController.text, //???????????????
      'tuberculosisDisease': tuberculosisController.text, //???????????????
      'heartDisease': heartDiseaseController.text, //????????????????????????
      'urinaryProtein': urinaryProteinController.text, //?????????
      'urinarySugar': urinarySugarController.text, //??????
      'urine': urineController, //?????????????????????
      'schoolDoctor': schoolDoctorController.text, //????????????
      'updated': Timestamp.now(),
      'rightEar1000': rightEar1000Controller.text, //????????????1000
      'leftEar1000': leftEar1000Controller.text, //????????????1000
      'rightEar4000': rightEar4000Controller.text, //????????????4000
      'leftEar4000': leftEar4000Controller.text, //????????????4000
      'tuberculosis': tuberculosisController.text, //???????????????
      'ecg': ecgController.text,
    });
  }

void initState() {
    if (widget.currentMemo != null) {
      titleController.text = widget.currentMemo!.title;
      heightController.text = widget.currentMemo!.height.toString();
      weightController.text = widget.currentMemo!.weight.toString();
  stateOfNutritionController.text = widget.currentMemo!.stateOfNutrition.toString(); //????????????
  spinalColumnNoteController.text = widget.currentMemo!.spinalColumnNote.toString(); //?????????????????????????????????????????????????????????????????????
  rightEyeController.text = widget.currentMemo!.rightEye.toString(); //?????????
  leftEyeController.text = widget.currentMemo!.leftEye.toString(); //?????????
  rightCorrectedEyeController.text = widget.currentMemo!.rightCorrectedEye.toString(); //???????????????
  leftCorrectedEyeController.text = widget.currentMemo!.leftCorrectedEye.toString(); //???????????????
  eyeDiseaseController.text = widget.currentMemo!.eyeDisease.toString();; //????????????
  earDiseaseController.text = widget.currentMemo!.earDisease.toString(); //????????????
  skinDiseaseController.text = widget.currentMemo!.skinDisease.toString(); //???????????????
  tuberculosisController.text = widget.currentMemo!.tuberculosisDisease.toString(); //???????????????
  heartDiseaseController.text = widget.currentMemo!.heartDisease.toString(); //????????????????????????
  urinaryProteinController.text = widget.currentMemo!.urinaryProtein.toString(); //?????????
  urinarySugarController.text = widget.currentMemo!.urinarySugar.toString(); //??????
  urineController.text = widget.currentMemo!.urine.toString(); //?????????????????????
  schoolDoctorController.text = widget.currentMemo!.schoolDoctor.toString(); //????????????
  rightEar1000Controller.text = widget.currentMemo!.rightEar1000.toString(); //????????????1000
  leftEar1000Controller.text = widget.currentMemo!.leftEar1000.toString(); //????????????1000
  rightEar4000Controller.text = widget.currentMemo!.rightEar4000.toString(); //????????????4000
  leftEar4000Controller.text = widget.currentMemo!.leftEar4000.toString(); //????????????4000
  tuberculosisController.text = widget.currentMemo!.tuberculosis.toString(); //???????????????
  ecgController.text = widget.currentMemo!.ecg.toString();
    }
  }
  @override
  Widget build(BuildContext context) {
    //initState();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.currentMemo == null ? '????????????' : '??????'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 5),
              const Text('????????????'),
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
              const Text('????????????'),
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
              const Text('??????'),
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
              const Text('????????????'),
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
              const Text('????????????????????????????????????????????????????????????????????????'),
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
              const Text('??????????????????'),
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
              const Text('??????????????????'),
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
              const Text('??????????????????'),
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
              const Text('??????????????????'),
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
              const Text('????????????'),
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
              const Text('????????????'),
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

              /////////??????

              const SizedBox(height: 5),
              const Text('???????????????'),
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
              const Text('???????????????'),
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
              const Text('????????????'),
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
              const Text('?????????'),
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
              const Text('??????'),
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
              const Text('?????????????????????'),
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
              const Text('??????????????????'),
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
              const Text('?????????????????????'),
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
              const Text('?????????'),
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

//////bool?????????(?????????

              const SizedBox(height: 5),
              const Text('??????1000'),
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
              const Text('??????1000'),
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
              const Text('??????4000'),
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
              const Text('??????4000'),
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
              const Text('???????????????'),
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
              const Text('????????????????????????'),
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
                  child: Text(widget.currentMemo == null ? '??????' : '????????????')),
            ],
          ),
        ),
      ),

    );

  }
}
