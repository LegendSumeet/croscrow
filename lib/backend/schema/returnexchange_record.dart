import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReturnexchangeRecord extends FirestoreRecord {
  ReturnexchangeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "orderid" field.
  String? _orderid;
  String get orderid => _orderid ?? '';
  bool hasOrderid() => _orderid != null;

  // "option" field.
  String? _option;
  String get option => _option ?? '';
  bool hasOption() => _option != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  bool hasReason() => _reason != null;

  // "item" field.
  DocumentReference? _item;
  DocumentReference? get item => _item;
  bool hasItem() => _item != null;

  // "mobileno" field.
  String? _mobileno;
  String get mobileno => _mobileno ?? '';
  bool hasMobileno() => _mobileno != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _orderid = snapshotData['orderid'] as String?;
    _option = snapshotData['option'] as String?;
    _reason = snapshotData['reason'] as String?;
    _item = snapshotData['item'] as DocumentReference?;
    _mobileno = snapshotData['mobileno'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('returnexchange');

  static Stream<ReturnexchangeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReturnexchangeRecord.fromSnapshot(s));

  static Future<ReturnexchangeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReturnexchangeRecord.fromSnapshot(s));

  static ReturnexchangeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReturnexchangeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReturnexchangeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReturnexchangeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReturnexchangeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReturnexchangeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReturnexchangeRecordData({
  String? name,
  String? orderid,
  String? option,
  String? reason,
  DocumentReference? item,
  String? mobileno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'orderid': orderid,
      'option': option,
      'reason': reason,
      'item': item,
      'mobileno': mobileno,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReturnexchangeRecordDocumentEquality
    implements Equality<ReturnexchangeRecord> {
  const ReturnexchangeRecordDocumentEquality();

  @override
  bool equals(ReturnexchangeRecord? e1, ReturnexchangeRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.orderid == e2?.orderid &&
        e1?.option == e2?.option &&
        e1?.reason == e2?.reason &&
        e1?.item == e2?.item &&
        e1?.mobileno == e2?.mobileno;
  }

  @override
  int hash(ReturnexchangeRecord? e) => const ListEquality()
      .hash([e?.name, e?.orderid, e?.option, e?.reason, e?.item, e?.mobileno]);

  @override
  bool isValidKey(Object? o) => o is ReturnexchangeRecord;
}
