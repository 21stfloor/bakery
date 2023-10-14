import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DriverRecord extends FirestoreRecord {
  DriverRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "driverName" field.
  String? _driverName;
  String get driverName => _driverName ?? '';
  bool hasDriverName() => _driverName != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _driverName = snapshotData['driverName'] as String?;
    _rating = castToType<int>(snapshotData['rating']);
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('driver');

  static Stream<DriverRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DriverRecord.fromSnapshot(s));

  static Future<DriverRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DriverRecord.fromSnapshot(s));

  static DriverRecord fromSnapshot(DocumentSnapshot snapshot) => DriverRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DriverRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DriverRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DriverRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DriverRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDriverRecordData({
  String? driverName,
  int? rating,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'driverName': driverName,
      'rating': rating,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class DriverRecordDocumentEquality implements Equality<DriverRecord> {
  const DriverRecordDocumentEquality();

  @override
  bool equals(DriverRecord? e1, DriverRecord? e2) {
    return e1?.driverName == e2?.driverName &&
        e1?.rating == e2?.rating &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(DriverRecord? e) =>
      const ListEquality().hash([e?.driverName, e?.rating, e?.photoUrl]);

  @override
  bool isValidKey(Object? o) => o is DriverRecord;
}
