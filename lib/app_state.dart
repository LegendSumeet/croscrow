import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _gav = prefs.getStringList('ff_gav')?.map((path) => path.ref).toList() ??
          _gav;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _cartsum = 0.0;
  double get cartsum => _cartsum;
  set cartsum(double value) {
    _cartsum = value;
  }

  List<CartitemtypeStruct> _cart = [];
  List<CartitemtypeStruct> get cart => _cart;
  set cart(List<CartitemtypeStruct> value) {
    _cart = value;
  }

  void addToCart(CartitemtypeStruct value) {
    cart.add(value);
  }

  void removeFromCart(CartitemtypeStruct value) {
    cart.remove(value);
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
  }

  void updateCartAtIndex(
    int index,
    CartitemtypeStruct Function(CartitemtypeStruct) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
  }

  void insertAtIndexInCart(int index, CartitemtypeStruct value) {
    cart.insert(index, value);
  }

  List<DocumentReference> _gav = [];
  List<DocumentReference> get gav => _gav;
  set gav(List<DocumentReference> value) {
    _gav = value;
    prefs.setStringList('ff_gav', value.map((x) => x.path).toList());
  }

  void addToGav(DocumentReference value) {
    gav.add(value);
    prefs.setStringList('ff_gav', _gav.map((x) => x.path).toList());
  }

  void removeFromGav(DocumentReference value) {
    gav.remove(value);
    prefs.setStringList('ff_gav', _gav.map((x) => x.path).toList());
  }

  void removeAtIndexFromGav(int index) {
    gav.removeAt(index);
    prefs.setStringList('ff_gav', _gav.map((x) => x.path).toList());
  }

  void updateGavAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    gav[index] = updateFn(_gav[index]);
    prefs.setStringList('ff_gav', _gav.map((x) => x.path).toList());
  }

  void insertAtIndexInGav(int index, DocumentReference value) {
    gav.insert(index, value);
    prefs.setStringList('ff_gav', _gav.map((x) => x.path).toList());
  }

  double _dicount = 0.0;
  double get dicount => _dicount;
  set dicount(double value) {
    _dicount = value;
  }

  bool _status = false;
  bool get status => _status;
  set status(bool value) {
    _status = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
