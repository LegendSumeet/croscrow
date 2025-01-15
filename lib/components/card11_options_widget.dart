import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card11_options_model.dart';
export 'card11_options_model.dart';

class Card11OptionsWidget extends StatefulWidget {
  const Card11OptionsWidget({
    super.key,
    required this.itemref,
  });

  final DocumentReference? itemref;

  @override
  State<Card11OptionsWidget> createState() => _Card11OptionsWidgetState();
}

class _Card11OptionsWidgetState extends State<Card11OptionsWidget> {
  late Card11OptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Card11OptionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
      child: StreamBuilder<ItemsRecord>(
        stream: ItemsRecord.getDocument(widget.itemref!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 20.0,
                height: 20.0,
                child: SpinKitWave(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 20.0,
                ),
              ),
            );
          }

          final card11ItemsRecord = snapshot.data!;

          return Container(
            width: 340.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 7.0,
                  color: Color(0x2F1D2429),
                  offset: Offset(
                    0.0,
                    3.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FlutterFlowChoiceChips(
                      options: functions
                          .newCustomFunction2(
                              card11ItemsRecord.sizexs,
                              card11ItemsRecord.sizes,
                              card11ItemsRecord.sizem,
                              card11ItemsRecord.sizel,
                              card11ItemsRecord.sizexl,
                              card11ItemsRecord.sizexxl)!
                          .map((label) => ChipData(label))
                          .toList(),
                      onChanged: (val) => safeSetState(
                          () => _model.choiceChipsValue = val?.firstOrNull),
                      selectedChipStyle: ChipStyle(
                        backgroundColor:
                            FlutterFlowTheme.of(context).primaryText,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).info,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                        iconColor: FlutterFlowTheme.of(context).info,
                        iconSize: 10.0,
                        elevation: 0.0,
                        borderColor: FlutterFlowTheme.of(context).primaryText,
                        borderWidth: 1.0,
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                        iconColor: FlutterFlowTheme.of(context).primaryText,
                        iconSize: 25.0,
                        elevation: 0.0,
                        borderColor: FlutterFlowTheme.of(context).primaryText,
                        borderWidth: 0.5,
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      chipSpacing: 8.0,
                      rowSpacing: 8.0,
                      multiselect: false,
                      initialized: _model.choiceChipsValue != null,
                      alignment: WrapAlignment.start,
                      controller: _model.choiceChipsValueController ??=
                          FormFieldController<List<String>>(
                        [
                          functions
                              .newCustomFunction2(
                                  card11ItemsRecord.sizexs,
                                  card11ItemsRecord.sizes,
                                  card11ItemsRecord.sizem,
                                  card11ItemsRecord.sizel,
                                  card11ItemsRecord.sizexl,
                                  card11ItemsRecord.sizexxl)!
                              .firstOrNull!
                        ],
                      ),
                      wrapped: true,
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 8.0,
                    borderWidth: 2.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.add_box,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'CARD11_OPTIONS_COMP_add_box_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_update_app_state');
                      FFAppState().addToCart(CartitemtypeStruct(
                        size: _model.choiceChipsValue,
                        menuitemref: card11ItemsRecord.reference,
                        quantity: 1,
                      ));
                      safeSetState(() {});
                      logFirebaseEvent('IconButton_update_app_state');
                      FFAppState().cartsum =
                          FFAppState().cartsum + card11ItemsRecord.price;
                      safeSetState(() {});
                      logFirebaseEvent('IconButton_show_snack_bar');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Added to Cart',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: const Duration(milliseconds: 2000),
                          backgroundColor: FlutterFlowTheme.of(context).accent4,
                        ),
                      );
                      logFirebaseEvent('IconButton_close_dialog_drawer_etc');
                      Navigator.pop(context);
                    },
                  ),
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 8.0,
                    borderWidth: 2.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('CARD11_OPTIONS_COMP_close_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_close_dialog_drawer_etc');
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
