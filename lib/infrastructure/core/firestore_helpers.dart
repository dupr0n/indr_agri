import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference get airTempCollection => collection('Air_Temperature');
  CollectionReference get humidityCollection => collection('Humidity');
  CollectionReference get intensityCollection => collection('Intensity');
  CollectionReference get objTempCollection => collection('Object_Temperature');
  CollectionReference get pHLevelCollection => collection('pH_Level');
}
