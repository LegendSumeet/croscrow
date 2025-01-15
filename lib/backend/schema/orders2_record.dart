import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Orders2Record extends FirestoreRecord {
  Orders2Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "pincode" field.
  double? _pincode;
  double get pincode => _pincode ?? 0.0;
  bool hasPincode() => _pincode != null;

  // "mobileno" field.
  double? _mobileno;
  double get mobileno => _mobileno ?? 0.0;
  bool hasMobileno() => _mobileno != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "orderid" field.
  int? _orderid;
  int get orderid => _orderid ?? 0;
  bool hasOrderid() => _orderid != null;

  // "ordertotal" field.
  double? _ordertotal;
  double get ordertotal => _ordertotal ?? 0.0;
  bool hasOrdertotal() => _ordertotal != null;

  // "ordereditems" field.
  List<CartitemtypeStruct>? _ordereditems;
  List<CartitemtypeStruct> get ordereditems => _ordereditems ?? const [];
  bool hasOrdereditems() => _ordereditems != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "off" field.
  double? _off;
  double get off => _off ?? 0.0;
  bool hasOff() => _off != null;

  // "promo" field.
  String? _promo;
  String get promo => _promo ?? '';
  bool hasPromo() => _promo != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "locality" field.
  String? _locality;
  String get locality => _locality ?? '';
  bool hasLocality() => _locality != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "prefix" field.
  String? _prefix;
  String get prefix => _prefix ?? '';
  bool hasPrefix() => _prefix != null;

  // "trackingid" field.
  String? _trackingid;
  String get trackingid => _trackingid ?? '';
  bool hasTrackingid() => _trackingid != null;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _pincode = castToType<double>(snapshotData['pincode']);
    _mobileno = castToType<double>(snapshotData['mobileno']);
    _address = snapshotData['address'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _orderid = castToType<int>(snapshotData['orderid']);
    _ordertotal = castToType<double>(snapshotData['ordertotal']);
    _ordereditems = getStructList(
      snapshotData['ordereditems'],
      CartitemtypeStruct.fromMap,
    );
    _brand = snapshotData['brand'] as String?;
    _off = castToType<double>(snapshotData['off']);
    _promo = snapshotData['promo'] as String?;
    _name = snapshotData['name'] as String?;
    _locality = snapshotData['locality'] as String?;
    _state = snapshotData['state'] as String?;
    _city = snapshotData['city'] as String?;
    _prefix = snapshotData['prefix'] as String?;
    _trackingid = snapshotData['trackingid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders2');

  static Stream<Orders2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Orders2Record.fromSnapshot(s));

  static Future<Orders2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Orders2Record.fromSnapshot(s));

  static Orders2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Orders2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Orders2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Orders2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Orders2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Orders2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrders2RecordData({
  DateTime? time,
  String? status,
  double? pincode,
  double? mobileno,
  String? address,
  DocumentReference? userRef,
  int? orderid,
  double? ordertotal,
  String? brand,
  double? off,
  String? promo,
  String? name,
  String? locality,
  String? state,
  String? city,
  String? prefix,
  String? trackingid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'status': status,
      'pincode': pincode,
      'mobileno': mobileno,
      'address': address,
      'userRef': userRef,
      'orderid': orderid,
      'ordertotal': ordertotal,
      'brand': brand,
      'off': off,
      'promo': promo,
      'name': name,
      'locality': locality,
      'state': state,
      'city': city,
      'prefix': prefix,
      'trackingid': trackingid,
    }.withoutNulls,
  );

  return firestoreData;
}

class Orders2RecordDocumentEquality implements Equality<Orders2Record> {
  const Orders2RecordDocumentEquality();

  @override
  bool equals(Orders2Record? e1, Orders2Record? e2) {
    const listEquality = ListEquality();
    return e1?.time == e2?.time &&
        e1?.status == e2?.status &&
        e1?.pincode == e2?.pincode &&
        e1?.mobileno == e2?.mobileno &&
        e1?.address == e2?.address &&
        e1?.userRef == e2?.userRef &&
        e1?.orderid == e2?.orderid &&
        e1?.ordertotal == e2?.ordertotal &&
        listEquality.equals(e1?.ordereditems, e2?.ordereditems) &&
        e1?.brand == e2?.brand &&
        e1?.off == e2?.off &&
        e1?.promo == e2?.promo &&
        e1?.name == e2?.name &&
        e1?.locality == e2?.locality &&
        e1?.state == e2?.state &&
        e1?.city == e2?.city &&
        e1?.prefix == e2?.prefix &&
        e1?.trackingid == e2?.trackingid;
  }

  @override
  int hash(Orders2Record? e) => const ListEquality().hash([
        e?.time,
        e?.status,
        e?.pincode,
        e?.mobileno,
        e?.address,
        e?.userRef,
        e?.orderid,
        e?.ordertotal,
        e?.ordereditems,
        e?.brand,
        e?.off,
        e?.promo,
        e?.name,
        e?.locality,
        e?.state,
        e?.city,
        e?.prefix,
        e?.trackingid
      ]);

  @override
  bool isValidKey(Object? o) => o is Orders2Record;
}
