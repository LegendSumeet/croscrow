import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemstyleRecord extends FirestoreRecord {
  ItemstyleRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "stylename" field.
  String? _stylename;
  String get stylename => _stylename ?? '';
  bool hasStylename() => _stylename != null;

  // "uniquestyle" field.
  String? _uniquestyle;
  String get uniquestyle => _uniquestyle ?? '';
  bool hasUniquestyle() => _uniquestyle != null;

  // "style" field.
  String? _style;
  String get style => _style ?? '';
  bool hasStyle() => _style != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _stylename = snapshotData['stylename'] as String?;
    _uniquestyle = snapshotData['uniquestyle'] as String?;
    _style = snapshotData['style'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itemstyle');

  static Stream<ItemstyleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemstyleRecord.fromSnapshot(s));

  static Future<ItemstyleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemstyleRecord.fromSnapshot(s));

  static ItemstyleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItemstyleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemstyleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemstyleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemstyleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemstyleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemstyleRecordData({
  String? stylename,
  String? uniquestyle,
  String? style,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'stylename': stylename,
      'uniquestyle': uniquestyle,
      'style': style,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemstyleRecordDocumentEquality implements Equality<ItemstyleRecord> {
  const ItemstyleRecordDocumentEquality();

  @override
  bool equals(ItemstyleRecord? e1, ItemstyleRecord? e2) {
    return e1?.stylename == e2?.stylename &&
        e1?.uniquestyle == e2?.uniquestyle &&
        e1?.style == e2?.style &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ItemstyleRecord? e) => const ListEquality()
      .hash([e?.stylename, e?.uniquestyle, e?.style, e?.image]);

  @override
  bool isValidKey(Object? o) => o is ItemstyleRecord;
}
