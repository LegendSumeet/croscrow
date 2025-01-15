// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PromodiscStruct extends FFFirebaseStruct {
  PromodiscStruct({
    double? discountedprice,
    String? promo,
    String? offer,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _discountedprice = discountedprice,
        _promo = promo,
        _offer = offer,
        super(firestoreUtilData);

  // "discountedprice" field.
  double? _discountedprice;
  double get discountedprice => _discountedprice ?? 0.0;
  set discountedprice(double? val) => _discountedprice = val;

  void incrementDiscountedprice(double amount) =>
      discountedprice = discountedprice + amount;

  bool hasDiscountedprice() => _discountedprice != null;

  // "promo" field.
  String? _promo;
  String get promo => _promo ?? '';
  set promo(String? val) => _promo = val;

  bool hasPromo() => _promo != null;

  // "offer" field.
  String? _offer;
  String get offer => _offer ?? '';
  set offer(String? val) => _offer = val;

  bool hasOffer() => _offer != null;

  static PromodiscStruct fromMap(Map<String, dynamic> data) => PromodiscStruct(
        discountedprice: castToType<double>(data['discountedprice']),
        promo: data['promo'] as String?,
        offer: data['offer'] as String?,
      );

  static PromodiscStruct? maybeFromMap(dynamic data) => data is Map
      ? PromodiscStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'discountedprice': _discountedprice,
        'promo': _promo,
        'offer': _offer,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'discountedprice': serializeParam(
          _discountedprice,
          ParamType.double,
        ),
        'promo': serializeParam(
          _promo,
          ParamType.String,
        ),
        'offer': serializeParam(
          _offer,
          ParamType.String,
        ),
      }.withoutNulls;

  static PromodiscStruct fromSerializableMap(Map<String, dynamic> data) =>
      PromodiscStruct(
        discountedprice: deserializeParam(
          data['discountedprice'],
          ParamType.double,
          false,
        ),
        promo: deserializeParam(
          data['promo'],
          ParamType.String,
          false,
        ),
        offer: deserializeParam(
          data['offer'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PromodiscStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PromodiscStruct &&
        discountedprice == other.discountedprice &&
        promo == other.promo &&
        offer == other.offer;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([discountedprice, promo, offer]);
}

PromodiscStruct createPromodiscStruct({
  double? discountedprice,
  String? promo,
  String? offer,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PromodiscStruct(
      discountedprice: discountedprice,
      promo: promo,
      offer: offer,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PromodiscStruct? updatePromodiscStruct(
  PromodiscStruct? promodisc, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    promodisc
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPromodiscStructData(
  Map<String, dynamic> firestoreData,
  PromodiscStruct? promodisc,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (promodisc == null) {
    return;
  }
  if (promodisc.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && promodisc.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final promodiscData = getPromodiscFirestoreData(promodisc, forFieldValue);
  final nestedData = promodiscData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = promodisc.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPromodiscFirestoreData(
  PromodiscStruct? promodisc, [
  bool forFieldValue = false,
]) {
  if (promodisc == null) {
    return {};
  }
  final firestoreData = mapToFirestore(promodisc.toMap());

  // Add any Firestore field values
  promodisc.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPromodiscListFirestoreData(
  List<PromodiscStruct>? promodiscs,
) =>
    promodiscs?.map((e) => getPromodiscFirestoreData(e, true)).toList() ?? [];
