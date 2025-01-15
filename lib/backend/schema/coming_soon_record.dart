import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComingSoonRecord extends FirestoreRecord {
  ComingSoonRecord._(
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

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _brand = snapshotData['brand'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coming_soon');

  static Stream<ComingSoonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComingSoonRecord.fromSnapshot(s));

  static Future<ComingSoonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComingSoonRecord.fromSnapshot(s));

  static ComingSoonRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComingSoonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComingSoonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComingSoonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComingSoonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComingSoonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComingSoonRecordData({
  String? name,
  double? price,
  String? brand,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'brand': brand,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComingSoonRecordDocumentEquality implements Equality<ComingSoonRecord> {
  const ComingSoonRecordDocumentEquality();

  @override
  bool equals(ComingSoonRecord? e1, ComingSoonRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.brand == e2?.brand &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ComingSoonRecord? e) =>
      const ListEquality().hash([e?.name, e?.price, e?.brand, e?.image]);

  @override
  bool isValidKey(Object? o) => o is ComingSoonRecord;
}
