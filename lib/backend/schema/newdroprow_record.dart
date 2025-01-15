import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewdroprowRecord extends FirestoreRecord {
  NewdroprowRecord._(
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
      FirebaseFirestore.instance.collection('newdroprow');

  static Stream<NewdroprowRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewdroprowRecord.fromSnapshot(s));

  static Future<NewdroprowRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewdroprowRecord.fromSnapshot(s));

  static NewdroprowRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NewdroprowRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewdroprowRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewdroprowRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewdroprowRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewdroprowRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewdroprowRecordData({
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

class NewdroprowRecordDocumentEquality implements Equality<NewdroprowRecord> {
  const NewdroprowRecordDocumentEquality();

  @override
  bool equals(NewdroprowRecord? e1, NewdroprowRecord? e2) {
    return e1?.image == e2?.image && e1?.name == e2?.name;
  }

  @override
  int hash(NewdroprowRecord? e) =>
      const ListEquality().hash([e?.image, e?.name]);

  @override
  bool isValidKey(Object? o) => o is NewdroprowRecord;
}
