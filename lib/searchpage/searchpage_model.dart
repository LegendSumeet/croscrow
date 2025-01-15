import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'searchpage_widget.dart' show SearchpageWidget;
import 'package:flutter/material.dart';

class SearchpageModel extends FlutterFlowModel<SearchpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ItemsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
