import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BranddataRecord extends FirestoreRecord {
  BranddataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "followers" field.
  double? _followers;
  double get followers => _followers ?? 0.0;
  bool hasFollowers() => _followers != null;

  // "websiteTraffic" field.
  String? _websiteTraffic;
  String get websiteTraffic => _websiteTraffic ?? '';
  bool hasWebsiteTraffic() => _websiteTraffic != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "pricerange" field.
  String? _pricerange;
  String get pricerange => _pricerange ?? '';
  bool hasPricerange() => _pricerange != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _followers = castToType<double>(snapshotData['followers']);
    _websiteTraffic = snapshotData['websiteTraffic'] as String?;
    _category = snapshotData['category'] as String?;
    _pricerange = snapshotData['pricerange'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('branddata');

  static Stream<BranddataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BranddataRecord.fromSnapshot(s));

  static Future<BranddataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BranddataRecord.fromSnapshot(s));

  static BranddataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BranddataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BranddataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BranddataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BranddataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BranddataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBranddataRecordData({
  String? name,
  double? followers,
  String? websiteTraffic,
  String? category,
  String? pricerange,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'followers': followers,
      'websiteTraffic': websiteTraffic,
      'category': category,
      'pricerange': pricerange,
    }.withoutNulls,
  );

  return firestoreData;
}

class BranddataRecordDocumentEquality implements Equality<BranddataRecord> {
  const BranddataRecordDocumentEquality();

  @override
  bool equals(BranddataRecord? e1, BranddataRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.followers == e2?.followers &&
        e1?.websiteTraffic == e2?.websiteTraffic &&
        e1?.category == e2?.category &&
        e1?.pricerange == e2?.pricerange;
  }

  @override
  int hash(BranddataRecord? e) => const ListEquality().hash(
      [e?.name, e?.followers, e?.websiteTraffic, e?.category, e?.pricerange]);

  @override
  bool isValidKey(Object? o) => o is BranddataRecord;
}
