// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DiscountTypeStruct extends FFFirebaseStruct {
  DiscountTypeStruct({
    double? percentoff,
    double? maxdis,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _percentoff = percentoff,
        _maxdis = maxdis,
        _name = name,
        super(firestoreUtilData);

  // "percentoff" field.
  double? _percentoff;
  double get percentoff => _percentoff ?? 0.0;
  set percentoff(double? val) => _percentoff = val;

  void incrementPercentoff(double amount) => percentoff = percentoff + amount;

  bool hasPercentoff() => _percentoff != null;

  // "maxdis" field.
  double? _maxdis;
  double get maxdis => _maxdis ?? 0.0;
  set maxdis(double? val) => _maxdis = val;

  void incrementMaxdis(double amount) => maxdis = maxdis + amount;

  bool hasMaxdis() => _maxdis != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static DiscountTypeStruct fromMap(Map<String, dynamic> data) =>
      DiscountTypeStruct(
        percentoff: castToType<double>(data['percentoff']),
        maxdis: castToType<double>(data['maxdis']),
        name: data['name'] as String?,
      );

  static DiscountTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? DiscountTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'percentoff': _percentoff,
        'maxdis': _maxdis,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'percentoff': serializeParam(
          _percentoff,
          ParamType.double,
        ),
        'maxdis': serializeParam(
          _maxdis,
          ParamType.double,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static DiscountTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      DiscountTypeStruct(
        percentoff: deserializeParam(
          data['percentoff'],
          ParamType.double,
          false,
        ),
        maxdis: deserializeParam(
          data['maxdis'],
          ParamType.double,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DiscountTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DiscountTypeStruct &&
        percentoff == other.percentoff &&
        maxdis == other.maxdis &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([percentoff, maxdis, name]);
}

DiscountTypeStruct createDiscountTypeStruct({
  double? percentoff,
  double? maxdis,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DiscountTypeStruct(
      percentoff: percentoff,
      maxdis: maxdis,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DiscountTypeStruct? updateDiscountTypeStruct(
  DiscountTypeStruct? discountType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    discountType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDiscountTypeStructData(
  Map<String, dynamic> firestoreData,
  DiscountTypeStruct? discountType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (discountType == null) {
    return;
  }
  if (discountType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && discountType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final discountTypeData =
      getDiscountTypeFirestoreData(discountType, forFieldValue);
  final nestedData =
      discountTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = discountType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDiscountTypeFirestoreData(
  DiscountTypeStruct? discountType, [
  bool forFieldValue = false,
]) {
  if (discountType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(discountType.toMap());

  // Add any Firestore field values
  discountType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDiscountTypeListFirestoreData(
  List<DiscountTypeStruct>? discountTypes,
) =>
    discountTypes?.map((e) => getDiscountTypeFirestoreData(e, true)).toList() ??
    [];
