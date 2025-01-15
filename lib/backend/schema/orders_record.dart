import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "pincode" field.
  double? _pincode;
  double get pincode => _pincode ?? 0.0;
  bool hasPincode() => _pincode != null;

  // "mobileno" field.
  double? _mobileno;
  double get mobileno => _mobileno ?? 0.0;
  bool hasMobileno() => _mobileno != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _name = snapshotData['name'] as String?;
    _address = snapshotData['address'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _pincode = castToType<double>(snapshotData['pincode']);
    _mobileno = castToType<double>(snapshotData['mobileno']);
    _state = snapshotData['state'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('orders')
          : FirebaseFirestore.instance.collectionGroup('orders');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('orders').doc(id);

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
  DateTime? time,
  String? status,
  String? name,
  String? address,
  double? price,
  double? pincode,
  double? mobileno,
  String? state,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'status': status,
      'name': name,
      'address': address,
      'price': price,
      'pincode': pincode,
      'mobileno': mobileno,
      'state': state,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.status == e2?.status &&
        e1?.name == e2?.name &&
        e1?.address == e2?.address &&
        e1?.price == e2?.price &&
        e1?.pincode == e2?.pincode &&
        e1?.mobileno == e2?.mobileno &&
        e1?.state == e2?.state;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.time,
        e?.status,
        e?.name,
        e?.address,
        e?.price,
        e?.pincode,
        e?.mobileno,
        e?.state
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
