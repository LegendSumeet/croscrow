import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart6_copy_widget.dart' show Cart6CopyWidget;
import 'package:flutter/material.dart';

class Cart6CopyModel extends FlutterFlowModel<Cart6CopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Promo widget.
  FocusNode? promoFocusNode1;
  TextEditingController? promoTextController1;
  String? Function(BuildContext, String?)? promoTextController1Validator;
  // Stores action output result for [Custom Action - newCustomActio] action in Button widget.
  PromodiscStruct? discountedprice;
  // State field(s) for Promo widget.
  FocusNode? promoFocusNode2;
  TextEditingController? promoTextController2;
  String? Function(BuildContext, String?)? promoTextController2Validator;
  // Stores action output result for [Custom Action - newCustomActio] action in Button widget.
  PromodiscStruct? discountedprice4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    promoFocusNode1?.dispose();
    promoTextController1?.dispose();

    promoFocusNode2?.dispose();
    promoTextController2?.dispose();
  }
}
