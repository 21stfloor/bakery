import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "orderID" field.
  int? _orderID;
  int get orderID => _orderID ?? 0;
  bool hasOrderID() => _orderID != null;

  // "orderDate" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "orderAmount" field.
  int? _orderAmount;
  int get orderAmount => _orderAmount ?? 0;
  bool hasOrderAmount() => _orderAmount != null;

  // "paymentStatus" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  bool hasPaymentStatus() => _paymentStatus != null;

  // "driver" field.
  DocumentReference? _driver;
  DocumentReference? get driver => _driver;
  bool hasDriver() => _driver != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _orderID = castToType<int>(snapshotData['orderID']);
    _orderDate = snapshotData['orderDate'] as DateTime?;
    _orderAmount = castToType<int>(snapshotData['orderAmount']);
    _paymentStatus = snapshotData['paymentStatus'] as String?;
    _driver = snapshotData['driver'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  int? orderID,
  DateTime? orderDate,
  int? orderAmount,
  String? paymentStatus,
  DocumentReference? driver,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderID': orderID,
      'orderDate': orderDate,
      'orderAmount': orderAmount,
      'paymentStatus': paymentStatus,
      'driver': driver,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.orderID == e2?.orderID &&
        e1?.orderDate == e2?.orderDate &&
        e1?.orderAmount == e2?.orderAmount &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.driver == e2?.driver &&
        e1?.user == e2?.user;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.orderID,
        e?.orderDate,
        e?.orderAmount,
        e?.paymentStatus,
        e?.driver,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
