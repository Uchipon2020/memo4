import 'package:cloud_firestore/cloud_firestore.dart';

class Memo {
  String title;
  String detail;
  Timestamp createdated;
  Timestamp? upDated;

  Memo(
      {required this.title,
      required this.detail,
      required this.createdated,
      this.upDated});
}
