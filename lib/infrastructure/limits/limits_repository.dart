import 'package:cloud_firestore/cloud_firestore.dart';

import '../core/firestore_helpers.dart';

Future<Map<String, dynamic>> getLimits(String docName) async {
  final firestore = FirebaseFirestore.instance;
  final limits = await firestore.limitsCollection.doc(docName).get();
  return limits.data() ?? {'High': 0.0, 'Low': 0.0};
}
