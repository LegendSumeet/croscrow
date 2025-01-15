import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupportRecord extends FirestoreRecord {
  SupportRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mobileno" field.
  String? _mobileno;
  String get mobileno => _mobileno ?? '';
  bool hasMobileno() => _mobileno != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _mobileno = snapshotData['mobileno'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('support');

  static Stream<SupportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SupportRecord.fromSnapshot(s));

  static Future<SupportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SupportRecord.fromSnapshot(s));

  static SupportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SupportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSupportRecordData({
  String? mobileno,
  String? name,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mobileno': mobileno,
      'name': name,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class SupportRecordDocumentEquality implements Equality<SupportRecord> {
  const SupportRecordDocumentEquality();

  @override
  bool equals(SupportRecord? e1, SupportRecord? e2) {
    return e1?.mobileno == e2?.mobileno &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description;
  }

  @override
  int hash(SupportRecord? e) =>
      const ListEquality().hash([e?.mobileno, e?.name, e?.description]);

  @override
  bool isValidKey(Object? o) => o is SupportRecord;
}
