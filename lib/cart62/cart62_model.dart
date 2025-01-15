import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart62_widget.dart' show Cart62Widget;
import 'package:flutter/material.dart';

class Cart62Model extends FlutterFlowModel<Cart62Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Promo widget.
  FocusNode? promoFocusNode;
  TextEditingController? promoTextController;
  String? Function(BuildContext, String?)? promoTextControllerValidator;
  // Stores action output result for [Custom Action - newCustomActio] action in Button widget.
  PromodiscStruct? discountedprice;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    promoFocusNode?.dispose();
    promoTextController?.dispose();
  }
}
