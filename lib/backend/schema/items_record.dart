import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsRecord extends FirestoreRecord {
  ItemsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "style" field.
  String? _style;
  String get style => _style ?? '';
  bool hasStyle() => _style != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "sizelist" field.
  List<String>? _sizelist;
  List<String> get sizelist => _sizelist ?? const [];
  bool hasSizelist() => _sizelist != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "brandref" field.
  DocumentReference? _brandref;
  DocumentReference? get brandref => _brandref;
  bool hasBrandref() => _brandref != null;

  // "discount" field.
  int? _discount;
  int get discount => _discount ?? 0;
  bool hasDiscount() => _discount != null;

  // "uploimg" field.
  String? _uploimg;
  String get uploimg => _uploimg ?? '';
  bool hasUploimg() => _uploimg != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "sizes" field.
  double? _sizes;
  double get sizes => _sizes ?? 0.0;
  bool hasSizes() => _sizes != null;

  // "sizem" field.
  double? _sizem;
  double get sizem => _sizem ?? 0.0;
  bool hasSizem() => _sizem != null;

  // "sizel" field.
  double? _sizel;
  double get sizel => _sizel ?? 0.0;
  bool hasSizel() => _sizel != null;

  // "sizexl" field.
  double? _sizexl;
  double get sizexl => _sizexl ?? 0.0;
  bool hasSizexl() => _sizexl != null;

  // "sizexxl" field.
  double? _sizexxl;
  double get sizexxl => _sizexxl ?? 0.0;
  bool hasSizexxl() => _sizexxl != null;

  // "sizexs" field.
  double? _sizexs;
  double get sizexs => _sizexs ?? 0.0;
  bool hasSizexs() => _sizexs != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "sortno" field.
  String? _sortno;
  String get sortno => _sortno ?? '';
  bool hasSortno() => _sortno != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _brand = snapshotData['brand'] as String?;
    _category = snapshotData['category'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _style = snapshotData['style'] as String?;
    _stock = castToType<int>(snapshotData['stock']);
    _sizelist = getDataList(snapshotData['sizelist']);
    _images = getDataList(snapshotData['images']);
    _rating = castToType<double>(snapshotData['rating']);
    _brandref = snapshotData['brandref'] as DocumentReference?;
    _discount = castToType<int>(snapshotData['discount']);
    _uploimg = snapshotData['uploimg'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _sizes = castToType<double>(snapshotData['sizes']);
    _sizem = castToType<double>(snapshotData['sizem']);
    _sizel = castToType<double>(snapshotData['sizel']);
    _sizexl = castToType<double>(snapshotData['sizexl']);
    _sizexxl = castToType<double>(snapshotData['sizexxl']);
    _sizexs = castToType<double>(snapshotData['sizexs']);
    _gender = snapshotData['gender'] as String?;
    _sortno = snapshotData['sortno'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('items');

  static Stream<ItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemsRecord.fromSnapshot(s));

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemsRecord.fromSnapshot(s));

  static ItemsRecord fromSnapshot(DocumentSnapshot snapshot) => ItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemsRecordData({
  String? name,
  String? brand,
  String? category,
  double? price,
  String? style,
  int? stock,
  double? rating,
  DocumentReference? brandref,
  int? discount,
  String? uploimg,
  DateTime? time,
  double? sizes,
  double? sizem,
  double? sizel,
  double? sizexl,
  double? sizexxl,
  double? sizexs,
  String? gender,
  String? sortno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'brand': brand,
      'category': category,
      'price': price,
      'style': style,
      'stock': stock,
      'rating': rating,
      'brandref': brandref,
      'discount': discount,
      'uploimg': uploimg,
      'time': time,
      'sizes': sizes,
      'sizem': sizem,
      'sizel': sizel,
      'sizexl': sizexl,
      'sizexxl': sizexxl,
      'sizexs': sizexs,
      'gender': gender,
      'sortno': sortno,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemsRecordDocumentEquality implements Equality<ItemsRecord> {
  const ItemsRecordDocumentEquality();

  @override
  bool equals(ItemsRecord? e1, ItemsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.brand == e2?.brand &&
        e1?.category == e2?.category &&
        e1?.price == e2?.price &&
        e1?.style == e2?.style &&
        e1?.stock == e2?.stock &&
        listEquality.equals(e1?.sizelist, e2?.sizelist) &&
        listEquality.equals(e1?.images, e2?.images) &&
        e1?.rating == e2?.rating &&
        e1?.brandref == e2?.brandref &&
        e1?.discount == e2?.discount &&
        e1?.uploimg == e2?.uploimg &&
        e1?.time == e2?.time &&
        e1?.sizes == e2?.sizes &&
        e1?.sizem == e2?.sizem &&
        e1?.sizel == e2?.sizel &&
        e1?.sizexl == e2?.sizexl &&
        e1?.sizexxl == e2?.sizexxl &&
        e1?.sizexs == e2?.sizexs &&
        e1?.gender == e2?.gender &&
        e1?.sortno == e2?.sortno;
  }

  @override
  int hash(ItemsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.brand,
        e?.category,
        e?.price,
        e?.style,
        e?.stock,
        e?.sizelist,
        e?.images,
        e?.rating,
        e?.brandref,
        e?.discount,
        e?.uploimg,
        e?.time,
        e?.sizes,
        e?.sizem,
        e?.sizel,
        e?.sizexl,
        e?.sizexxl,
        e?.sizexs,
        e?.gender,
        e?.sortno
      ]);

  @override
  bool isValidKey(Object? o) => o is ItemsRecord;
}
