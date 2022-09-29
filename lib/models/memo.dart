import 'package:cloud_firestore/cloud_firestore.dart';

class Memos {
  final String id;
  final String title;
  final String height;
  final String weight;
  Timestamp? createdated;
  Timestamp? upDated;

  Memos(
      {required this.id,
      required this.title,
      required this.height,
      required this.weight,
      required this.createdated,
      this.upDated});
}
