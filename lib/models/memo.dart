import 'package:cloud_firestore/cloud_firestore.dart';

class Memos {
  final String id; //ID
  final String title; //タイトル
  final String? height; //身長
  final String? weight; //体重
  final String? stateOfNutrition; //栄養状態
  final String? spinalColumnNote; //脊柱及び侠客の疾病及び異常の有無並び四肢の状態。の記載
  final String? rightEye; //視力右
  final String? leftEye; //視力左
  final String? rightCorrectedEye; //矯正視力右
  final String? leftCorrectedEye; //矯正視力左
  final String? eyeDisease; //目の疾病
  final String? earDisease; //耳の疾病の有無
  final String? ecg; //心臓の所見の有無
  final String? urineNote; //尿所見の内容
  final String? others; //その他
/* bool -----------------------------------*/
  final bool? rightEar1000; //聴力　右1000
  final bool? leftEar1000; //聴力　左1000
  final bool? rightEar4000; //聴力　右4000
  final bool? leftEar4000; //聴力　左4000
  final bool? tuberculosis; //結核の有無
  final bool? urine; //尿所見の有無

  final Timestamp? tuberculosisDay; //結核の日付
  final Timestamp createdTime;
  final Timestamp? upDated;

  Memos(
      {required this.id,
      required this.title,
      required this.createdTime,
      this.upDated,
      this.height,
      this.weight,
      this.stateOfNutrition,
      this.spinalColumnNote,
      this.rightEye,
      this.leftEye,
      this.rightCorrectedEye,
      this.leftCorrectedEye,
      this.eyeDisease,
      this.rightEar1000,
      this.leftEar1000,
      this.rightEar4000,
      this.leftEar4000,
      this.earDisease,
      this.tuberculosis,
      this.tuberculosisDay,
      this.ecg,
      this.urine,
      this.urineNote,
      this.others});
}
//　身長・体重
// ２，栄養状態
// ３，脊柱及び侠客の疾病及び異常の有無並び四肢の状態。
//4　視力及び聴力
//5　目の疾病及び以上の有無
//6　耳鼻咽頭疾患及び皮膚疾患の有無
//7　歯科及び口腔の疾病及び以上の有無
//8　結核の有無
//9　心臓の疾病及び以上の有無
//10　尿
//11　その他

/* id,
  title,
  createdTime,
  upDated,
  height,
  weight,
  stateOfNutrition,
  spinalColumn,
  spinalColumnNote,
   rightEye,
   leftEye,
   rightCorrectedEye,
   leftCorrectedEye,
    eyeDisease,
    rightEar1000,
    leftEar1000,
    rightEar4000,
    leftEar4000,
    earDisease,
     tuberculosis,
     tuberculosisDay,
     ecg,
     urine,
     urineNote,
     others});*/
