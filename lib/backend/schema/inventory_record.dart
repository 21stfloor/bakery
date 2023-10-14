import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventoryRecord extends FirestoreRecord {
  InventoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "storage" field.
  String? _storage;
  String get storage => _storage ?? '';
  bool hasStorage() => _storage != null;

  void _initializeFields() {
    _itemName = snapshotData['itemName'] as String?;
    _category = snapshotData['category'] as String?;
    _cost = castToType<int>(snapshotData['cost']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _storage = snapshotData['storage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inventory');

  static Stream<InventoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventoryRecord.fromSnapshot(s));

  static Future<InventoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventoryRecord.fromSnapshot(s));

  static InventoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventoryRecordData({
  String? itemName,
  String? category,
  int? cost,
  int? quantity,
  String? storage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'itemName': itemName,
      'category': category,
      'cost': cost,
      'quantity': quantity,
      'storage': storage,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventoryRecordDocumentEquality implements Equality<InventoryRecord> {
  const InventoryRecordDocumentEquality();

  @override
  bool equals(InventoryRecord? e1, InventoryRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.category == e2?.category &&
        e1?.cost == e2?.cost &&
        e1?.quantity == e2?.quantity &&
        e1?.storage == e2?.storage;
  }

  @override
  int hash(InventoryRecord? e) => const ListEquality()
      .hash([e?.itemName, e?.category, e?.cost, e?.quantity, e?.storage]);

  @override
  bool isValidKey(Object? o) => o is InventoryRecord;
}
