import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BrandsRecord extends FirestoreRecord {
  BrandsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "emailid" field.
  String? _emailid;
  String get emailid => _emailid ?? '';
  bool hasEmailid() => _emailid != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "promos" field.
  DocumentReference? _promos;
  DocumentReference? get promos => _promos;
  bool hasPromos() => _promos != null;

  // "policy" field.
  String? _policy;
  String get policy => _policy ?? '';
  bool hasPolicy() => _policy != null;

  // "returnoptions" field.
  List<String>? _returnoptions;
  List<String> get returnoptions => _returnoptions ?? const [];
  bool hasReturnoptions() => _returnoptions != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
    _image = snapshotData['image'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _emailid = snapshotData['emailid'] as String?;
    _password = snapshotData['password'] as String?;
    _promos = snapshotData['promos'] as DocumentReference?;
    _policy = snapshotData['policy'] as String?;
    _returnoptions = getDataList(snapshotData['returnoptions']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('brands');

  static Stream<BrandsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BrandsRecord.fromSnapshot(s));

  static Future<BrandsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BrandsRecord.fromSnapshot(s));

  static BrandsRecord fromSnapshot(DocumentSnapshot snapshot) => BrandsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BrandsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BrandsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BrandsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BrandsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBrandsRecordData({
  String? name,
  String? category,
  String? image,
  double? rating,
  String? emailid,
  String? password,
  DocumentReference? promos,
  String? policy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
      'image': image,
      'rating': rating,
      'emailid': emailid,
      'password': password,
      'promos': promos,
      'policy': policy,
    }.withoutNulls,
  );

  return firestoreData;
}

class BrandsRecordDocumentEquality implements Equality<BrandsRecord> {
  const BrandsRecordDocumentEquality();

  @override
  bool equals(BrandsRecord? e1, BrandsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        e1?.image == e2?.image &&
        e1?.rating == e2?.rating &&
        e1?.emailid == e2?.emailid &&
        e1?.password == e2?.password &&
        e1?.promos == e2?.promos &&
        e1?.policy == e2?.policy &&
        listEquality.equals(e1?.returnoptions, e2?.returnoptions);
  }

  @override
  int hash(BrandsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.category,
        e?.image,
        e?.rating,
        e?.emailid,
        e?.password,
        e?.promos,
        e?.policy,
        e?.returnoptions
      ]);

  @override
  bool isValidKey(Object? o) => o is BrandsRecord;
}
