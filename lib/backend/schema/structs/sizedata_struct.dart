// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SizedataStruct extends FFFirebaseStruct {
  SizedataStruct({
    int? ss,
    int? xs,
    int? mm,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ss = ss,
        _xs = xs,
        _mm = mm,
        super(firestoreUtilData);

  // "ss" field.
  int? _ss;
  int get ss => _ss ?? 0;
  set ss(int? val) => _ss = val;

  void incrementSs(int amount) => ss = ss + amount;

  bool hasSs() => _ss != null;

  // "xs" field.
  int? _xs;
  int get xs => _xs ?? 0;
  set xs(int? val) => _xs = val;

  void incrementXs(int amount) => xs = xs + amount;

  bool hasXs() => _xs != null;

  // "mm" field.
  int? _mm;
  int get mm => _mm ?? 0;
  set mm(int? val) => _mm = val;

  void incrementMm(int amount) => mm = mm + amount;

  bool hasMm() => _mm != null;

  static SizedataStruct fromMap(Map<String, dynamic> data) => SizedataStruct(
        ss: castToType<int>(data['ss']),
        xs: castToType<int>(data['xs']),
        mm: castToType<int>(data['mm']),
      );

  static SizedataStruct? maybeFromMap(dynamic data) =>
      data is Map ? SizedataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ss': _ss,
        'xs': _xs,
        'mm': _mm,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ss': serializeParam(
          _ss,
          ParamType.int,
        ),
        'xs': serializeParam(
          _xs,
          ParamType.int,
        ),
        'mm': serializeParam(
          _mm,
          ParamType.int,
        ),
      }.withoutNulls;

  static SizedataStruct fromSerializableMap(Map<String, dynamic> data) =>
      SizedataStruct(
        ss: deserializeParam(
          data['ss'],
          ParamType.int,
          false,
        ),
        xs: deserializeParam(
          data['xs'],
          ParamType.int,
          false,
        ),
        mm: deserializeParam(
          data['mm'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SizedataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SizedataStruct &&
        ss == other.ss &&
        xs == other.xs &&
        mm == other.mm;
  }

  @override
  int get hashCode => const ListEquality().hash([ss, xs, mm]);
}

SizedataStruct createSizedataStruct({
  int? ss,
  int? xs,
  int? mm,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SizedataStruct(
      ss: ss,
      xs: xs,
      mm: mm,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SizedataStruct? updateSizedataStruct(
  SizedataStruct? sizedata, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sizedata
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSizedataStructData(
  Map<String, dynamic> firestoreData,
  SizedataStruct? sizedata,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sizedata == null) {
    return;
  }
  if (sizedata.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sizedata.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sizedataData = getSizedataFirestoreData(sizedata, forFieldValue);
  final nestedData = sizedataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sizedata.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSizedataFirestoreData(
  SizedataStruct? sizedata, [
  bool forFieldValue = false,
]) {
  if (sizedata == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sizedata.toMap());

  // Add any Firestore field values
  sizedata.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSizedataListFirestoreData(
  List<SizedataStruct>? sizedatas,
) =>
    sizedatas?.map((e) => getSizedataFirestoreData(e, true)).toList() ?? [];
