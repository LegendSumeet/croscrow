import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewdropsRecord extends FirestoreRecord {
  NewdropsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('newdrops');

  static Stream<NewdropsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewdropsRecord.fromSnapshot(s));

  static Future<NewdropsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewdropsRecord.fromSnapshot(s));

  static NewdropsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NewdropsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewdropsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewdropsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewdropsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewdropsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewdropsRecordData({
  String? image,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewdropsRecordDocumentEquality implements Equality<NewdropsRecord> {
  const NewdropsRecordDocumentEquality();

  @override
  bool equals(NewdropsRecord? e1, NewdropsRecord? e2) {
    return e1?.image == e2?.image && e1?.name == e2?.name;
  }

  @override
  int hash(NewdropsRecord? e) => const ListEquality().hash([e?.image, e?.name]);

  @override
  bool isValidKey(Object? o) => o is NewdropsRecord;
}
