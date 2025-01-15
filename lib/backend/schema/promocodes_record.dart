import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromocodesRecord extends FirestoreRecord {
  PromocodesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "offername" field.
  String? _offername;
  String get offername => _offername ?? '';
  bool hasOffername() => _offername != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  bool hasDiscount() => _discount != null;

  // "maxdis" field.
  double? _maxdis;
  double get maxdis => _maxdis ?? 0.0;
  bool hasMaxdis() => _maxdis != null;

  // "brand" field.
  DocumentReference? _brand;
  DocumentReference? get brand => _brand;
  bool hasBrand() => _brand != null;

  // "brandname" field.
  String? _brandname;
  String get brandname => _brandname ?? '';
  bool hasBrandname() => _brandname != null;

  // "policy" field.
  String? _policy;
  String get policy => _policy ?? '';
  bool hasPolicy() => _policy != null;

  void _initializeFields() {
    _offername = snapshotData['offername'] as String?;
    _discount = castToType<double>(snapshotData['discount']);
    _maxdis = castToType<double>(snapshotData['maxdis']);
    _brand = snapshotData['brand'] as DocumentReference?;
    _brandname = snapshotData['brandname'] as String?;
    _policy = snapshotData['policy'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promocodes');

  static Stream<PromocodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromocodesRecord.fromSnapshot(s));

  static Future<PromocodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromocodesRecord.fromSnapshot(s));

  static PromocodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromocodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromocodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromocodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromocodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromocodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromocodesRecordData({
  String? offername,
  double? discount,
  double? maxdis,
  DocumentReference? brand,
  String? brandname,
  String? policy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'offername': offername,
      'discount': discount,
      'maxdis': maxdis,
      'brand': brand,
      'brandname': brandname,
      'policy': policy,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromocodesRecordDocumentEquality implements Equality<PromocodesRecord> {
  const PromocodesRecordDocumentEquality();

  @override
  bool equals(PromocodesRecord? e1, PromocodesRecord? e2) {
    return e1?.offername == e2?.offername &&
        e1?.discount == e2?.discount &&
        e1?.maxdis == e2?.maxdis &&
        e1?.brand == e2?.brand &&
        e1?.brandname == e2?.brandname &&
        e1?.policy == e2?.policy;
  }

  @override
  int hash(PromocodesRecord? e) => const ListEquality().hash([
        e?.offername,
        e?.discount,
        e?.maxdis,
        e?.brand,
        e?.brandname,
        e?.policy
      ]);

  @override
  bool isValidKey(Object? o) => o is PromocodesRecord;
}
