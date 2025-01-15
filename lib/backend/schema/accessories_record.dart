import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccessoriesRecord extends FirestoreRecord {
  AccessoriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
    _images = getDataList(snapshotData['images']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('accessories');

  static Stream<AccessoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccessoriesRecord.fromSnapshot(s));

  static Future<AccessoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccessoriesRecord.fromSnapshot(s));

  static AccessoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccessoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccessoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccessoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccessoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccessoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccessoriesRecordData({
  String? name,
  double? price,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccessoriesRecordDocumentEquality implements Equality<AccessoriesRecord> {
  const AccessoriesRecordDocumentEquality();

  @override
  bool equals(AccessoriesRecord? e1, AccessoriesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        listEquality.equals(e1?.images, e2?.images);
  }

  @override
  int hash(AccessoriesRecord? e) =>
      const ListEquality().hash([e?.name, e?.price, e?.image, e?.images]);

  @override
  bool isValidKey(Object? o) => o is AccessoriesRecord;
}
