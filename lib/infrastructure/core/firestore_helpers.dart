import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference get airTempCollection => collection('AirTemperature');
  CollectionReference get humidityCollection => collection('Humidity');
  CollectionReference get intensityCollection => collection('Intensity');
  CollectionReference get objTempCollection => collection('ObjectTemperature');
  CollectionReference get pHLevelCollection => collection('PhLevel');
}
