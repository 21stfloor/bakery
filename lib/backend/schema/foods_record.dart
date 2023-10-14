import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodsRecord extends FirestoreRecord {
  FoodsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "discountedPrice" field.
  int? _discountedPrice;
  int get discountedPrice => _discountedPrice ?? 0;
  bool hasDiscountedPrice() => _discountedPrice != null;

  // "availability" field.
  String? _availability;
  String get availability => _availability ?? '';
  bool hasAvailability() => _availability != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "foodImage" field.
  String? _foodImage;
  String get foodImage => _foodImage ?? '';
  bool hasFoodImage() => _foodImage != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _discountedPrice = castToType<int>(snapshotData['discountedPrice']);
    _availability = snapshotData['availability'] as String?;
    _uid = snapshotData['uid'] as String?;
    _foodImage = snapshotData['foodImage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Foods');

  static Stream<FoodsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodsRecord.fromSnapshot(s));

  static Future<FoodsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodsRecord.fromSnapshot(s));

  static FoodsRecord fromSnapshot(DocumentSnapshot snapshot) => FoodsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodsRecordData({
  String? name,
  String? description,
  int? price,
  int? discountedPrice,
  String? availability,
  String? uid,
  String? foodImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'discountedPrice': discountedPrice,
      'availability': availability,
      'uid': uid,
      'foodImage': foodImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodsRecordDocumentEquality implements Equality<FoodsRecord> {
  const FoodsRecordDocumentEquality();

  @override
  bool equals(FoodsRecord? e1, FoodsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.discountedPrice == e2?.discountedPrice &&
        e1?.availability == e2?.availability &&
        e1?.uid == e2?.uid &&
        e1?.foodImage == e2?.foodImage;
  }

  @override
  int hash(FoodsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.discountedPrice,
        e?.availability,
        e?.uid,
        e?.foodImage
      ]);

  @override
  bool isValidKey(Object? o) => o is FoodsRecord;
}
