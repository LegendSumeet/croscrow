// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CartitemtypeStruct extends FFFirebaseStruct {
  CartitemtypeStruct({
    String? size,
    DocumentReference? menuitemref,
    int? quantity,
    double? size1stock,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _size = size,
        _menuitemref = menuitemref,
        _quantity = quantity,
        _size1stock = size1stock,
        super(firestoreUtilData);

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  set size(String? val) => _size = val;

  bool hasSize() => _size != null;

  // "menuitemref" field.
  DocumentReference? _menuitemref;
  DocumentReference? get menuitemref => _menuitemref;
  set menuitemref(DocumentReference? val) => _menuitemref = val;

  bool hasMenuitemref() => _menuitemref != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "size1stock" field.
  double? _size1stock;
  double get size1stock => _size1stock ?? 0.0;
  set size1stock(double? val) => _size1stock = val;

  void incrementSize1stock(double amount) => size1stock = size1stock + amount;

  bool hasSize1stock() => _size1stock != null;

  static CartitemtypeStruct fromMap(Map<String, dynamic> data) =>
      CartitemtypeStruct(
        size: data['size'] as String?,
        menuitemref: data['menuitemref'] as DocumentReference?,
        quantity: castToType<int>(data['quantity']),
        size1stock: castToType<double>(data['size1stock']),
      );

  static CartitemtypeStruct? maybeFromMap(dynamic data) => data is Map
      ? CartitemtypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'size': _size,
        'menuitemref': _menuitemref,
        'quantity': _quantity,
        'size1stock': _size1stock,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'size': serializeParam(
          _size,
          ParamType.String,
        ),
        'menuitemref': serializeParam(
          _menuitemref,
          ParamType.DocumentReference,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'size1stock': serializeParam(
          _size1stock,
          ParamType.double,
        ),
      }.withoutNulls;

  static CartitemtypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartitemtypeStruct(
        size: deserializeParam(
          data['size'],
          ParamType.String,
          false,
        ),
        menuitemref: deserializeParam(
          data['menuitemref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['items'],
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        size1stock: deserializeParam(
          data['size1stock'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CartitemtypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartitemtypeStruct &&
        size == other.size &&
        menuitemref == other.menuitemref &&
        quantity == other.quantity &&
        size1stock == other.size1stock;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([size, menuitemref, quantity, size1stock]);
}

CartitemtypeStruct createCartitemtypeStruct({
  String? size,
  DocumentReference? menuitemref,
  int? quantity,
  double? size1stock,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartitemtypeStruct(
      size: size,
      menuitemref: menuitemref,
      quantity: quantity,
      size1stock: size1stock,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartitemtypeStruct? updateCartitemtypeStruct(
  CartitemtypeStruct? cartitemtype, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartitemtype
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartitemtypeStructData(
  Map<String, dynamic> firestoreData,
  CartitemtypeStruct? cartitemtype,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartitemtype == null) {
    return;
  }
  if (cartitemtype.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartitemtype.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartitemtypeData =
      getCartitemtypeFirestoreData(cartitemtype, forFieldValue);
  final nestedData =
      cartitemtypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartitemtype.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartitemtypeFirestoreData(
  CartitemtypeStruct? cartitemtype, [
  bool forFieldValue = false,
]) {
  if (cartitemtype == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartitemtype.toMap());

  // Add any Firestore field values
  cartitemtype.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartitemtypeListFirestoreData(
  List<CartitemtypeStruct>? cartitemtypes,
) =>
    cartitemtypes?.map((e) => getCartitemtypeFirestoreData(e, true)).toList() ??
    [];
