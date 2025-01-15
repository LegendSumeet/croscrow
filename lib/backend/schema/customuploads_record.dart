import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomuploadsRecord extends FirestoreRecord {
  CustomuploadsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "imguplo" field.
  String? _imguplo;
  String get imguplo => _imguplo ?? '';
  bool hasImguplo() => _imguplo != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  void _initializeFields() {
    _imguplo = snapshotData['imguplo'] as String?;
    _name = snapshotData['name'] as String?;
    _userref = snapshotData['userref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('customuploads');

  static Stream<CustomuploadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustomuploadsRecord.fromSnapshot(s));

  static Future<CustomuploadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CustomuploadsRecord.fromSnapshot(s));

  static CustomuploadsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustomuploadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomuploadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustomuploadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustomuploadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomuploadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomuploadsRecordData({
  String? imguplo,
  String? name,
  DocumentReference? userref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imguplo': imguplo,
      'name': name,
      'userref': userref,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustomuploadsRecordDocumentEquality
    implements Equality<CustomuploadsRecord> {
  const CustomuploadsRecordDocumentEquality();

  @override
  bool equals(CustomuploadsRecord? e1, CustomuploadsRecord? e2) {
    return e1?.imguplo == e2?.imguplo &&
        e1?.name == e2?.name &&
        e1?.userref == e2?.userref;
  }

  @override
  int hash(CustomuploadsRecord? e) =>
      const ListEquality().hash([e?.imguplo, e?.name, e?.userref]);

  @override
  bool isValidKey(Object? o) => o is CustomuploadsRecord;
}
