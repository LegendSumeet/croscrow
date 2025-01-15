// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class StatusStruct extends FFFirebaseStruct {
  StatusStruct({
    bool? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _status = status,
        super(firestoreUtilData);

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  static StatusStruct fromMap(Map<String, dynamic> data) => StatusStruct(
        status: data['status'] as bool?,
      );

  static StatusStruct? maybeFromMap(dynamic data) =>
      data is Map ? StatusStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
      }.withoutNulls;

  static StatusStruct fromSerializableMap(Map<String, dynamic> data) =>
      StatusStruct(
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'StatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StatusStruct && status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([status]);
}

StatusStruct createStatusStruct({
  bool? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StatusStruct(
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StatusStruct? updateStatusStruct(
  StatusStruct? statusStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    statusStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStatusStructData(
  Map<String, dynamic> firestoreData,
  StatusStruct? statusStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (statusStruct == null) {
    return;
  }
  if (statusStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && statusStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final statusStructData = getStatusFirestoreData(statusStruct, forFieldValue);
  final nestedData =
      statusStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = statusStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStatusFirestoreData(
  StatusStruct? statusStruct, [
  bool forFieldValue = false,
]) {
  if (statusStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(statusStruct.toMap());

  // Add any Firestore field values
  statusStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStatusListFirestoreData(
  List<StatusStruct>? statusStructs,
) =>
    statusStructs?.map((e) => getStatusFirestoreData(e, true)).toList() ?? [];
