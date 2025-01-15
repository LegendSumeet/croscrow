import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'card11_options_widget.dart' show Card11OptionsWidget;
import 'package:flutter/material.dart';

class Card11OptionsModel extends FlutterFlowModel<Card11OptionsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
