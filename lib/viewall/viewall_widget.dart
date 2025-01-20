import '/backend/backend.dart';
import '/components/card11_options_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'viewall_model.dart';
export 'viewall_model.dart';

class ViewallWidget extends StatefulWidget {
  const ViewallWidget({super.key});

  @override
  State<ViewallWidget> createState() => _ViewallWidgetState();
}

class _ViewallWidgetState extends State<ViewallWidget> {
  late ViewallModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewallModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'VIEWALL'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: Container(
              width: 162.0,
              height: 39.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('VIEWALL_PAGE_Icon_tvp4ncpr_ON_TAP');
                    logFirebaseEvent('Icon_navigate_back');
                    context.safePop();
                  },
                  child: Icon(
                    Icons.chevron_left_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
              ),
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('VIEWALL_PAGE_Image_jz38uy5c_ON_TAP');
                logFirebaseEvent('Image_navigate_to');

                context.pushNamed('homepageCopyCopyCopyCopy');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Untitled_design_(44).png',
                  height: 70.0,
                  fit: BoxFit.contain,
                  alignment: const Alignment(0.0, 0.0),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: Container(
                width: 46.0,
                height: 59.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('VIEWALL_PAGE_Icon_vm3j3m07_ON_TAP');
                      logFirebaseEvent('Icon_navigate_to');

                      context.pushNamed('searchpage');
                    },
                    child: Icon(
                      Icons.search_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 26.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Untitled_design.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          centerTitle: false,
          elevation: 1.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 15.0, 5.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(null),
                        options: const ['LOW TO HIGH', 'HIGH TO LOW', 'RELEVANCE'],
                        onChanged: (val) =>
                            safeSetState(() => _model.dropDownValue = val),
                        width: 87.0,
                        height: 48.0,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                        hintText: 'SORT',
                        icon: Icon(
                          Icons.sort_sharp,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 0.5,
                        borderRadius: 16.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: false,
                        isSearchable: false,
                        isMultiSelect: false,
                        labelText: 'SORT',
                        labelTextStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowChoiceChips(
                            options: const [
                              ChipData('SHIRT'),
                              ChipData('TSHIRT'),
                              ChipData('CARGO'),
                              ChipData('JEANS')
                            ],
                            onChanged: (val) => safeSetState(() =>
                                _model.choiceChipsValue = val?.firstOrNull),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 11.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 0.0,
                              elevation: 1.0,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              iconSize: 10.0,
                              elevation: 1.0,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            chipSpacing: 10.0,
                            rowSpacing: 12.0,
                            multiselect: false,
                            alignment: WrapAlignment.center,
                            controller: _model.choiceChipsValueController ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            wrapped: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if ((_model.dropDownValue == null ||
                      _model.dropDownValue == '') ||
                  (_model.dropDownValue == 'RELEVANCE'))
                Expanded(
                  child: StreamBuilder<List<ItemsRecord>>(
                    stream: queryItemsRecord(
                      queryBuilder: (itemsRecord) => itemsRecord.where(
                        'style',
                        isEqualTo: _model.choiceChipsValue != ''
                            ? _model.choiceChipsValue
                            : null,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 20.0,
                            height: 20.0,
                            child: SpinKitWave(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 20.0,
                            ),
                          ),
                        );
                      }
                      List<ItemsRecord> staggeredViewItemsRecordList =
                          snapshot.data!;

                      return MasonryGridView.builder(
                        gridDelegate:
                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              MediaQuery.sizeOf(context).width > 1200.0 ? 4 : 2,
                        ),
                        itemCount: staggeredViewItemsRecordList.length,
                        itemBuilder: (context, staggeredViewIndex) {
                          final staggeredViewItemsRecord =
                              staggeredViewItemsRecordList[staggeredViewIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Container(
                              height: () {
                                if (MediaQuery.sizeOf(context).width < 1000.0) {
                                  return 320.0;
                                } else if (MediaQuery.sizeOf(context).width >
                                    1000.0) {
                                  return 500.0;
                                } else {
                                  return 320.0;
                                }
                              }(),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'VIEWALL_PAGE_Image_2c709t5q_ON_TAP');
                                        if (MediaQuery.sizeOf(context).width <
                                            800.0) {
                                          logFirebaseEvent('Image_navigate_to');

                                          context.pushNamed(
                                            'ProductDetail',
                                            queryParameters: {
                                              'itemRef': serializeParam(
                                                staggeredViewItemsRecord
                                                    .reference,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        } else {
                                          logFirebaseEvent('Image_navigate_to');

                                          context.pushNamed(
                                            'ProductDetailCopyCopyCopy',
                                            queryParameters: {
                                              'itemRef': serializeParam(
                                                staggeredViewItemsRecord
                                                    .reference,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        }
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.network(
                                          staggeredViewItemsRecord
                                              .images.firstOrNull!,
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                1000.0) {
                                              return 200.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width >
                                                1000.0) {
                                              return 320.0;
                                            } else {
                                              return 200.0;
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                1000.0) {
                                              return 300.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width >
                                                1000.0) {
                                              return 460.0;
                                            } else {
                                              return 300.0;
                                            }
                                          }(),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          1000.0) {
                                        return 180.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width >
                                          1000.0) {
                                        return 300.0;
                                      } else {
                                        return 180.0;
                                      }
                                    }(),
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 1.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        staggeredViewItemsRecord
                                                            .brand,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        staggeredViewItemsRecord
                                                            .name
                                                            .maybeHandleOverflow(
                                                          maxChars: 10,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: 84.0,
                                                height: 36.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    ToggleIcon(
                                                      onPressed: () async {
                                                        safeSetState(
                                                          () => FFAppState().gav.contains(staggeredViewItemsRecord.reference)
                                                              ? FFAppState().removeFromGav(
                                                                  staggeredViewItemsRecord
                                                                      .reference)
                                                              : FFAppState().addToGav(
                                                                  staggeredViewItemsRecord
                                                                      .reference),
                                                        );
                                                      },
                                                      value: FFAppState()
                                                          .gav
                                                          .contains(
                                                              staggeredViewItemsRecord
                                                                  .reference),
                                                      onIcon: const Icon(
                                                        Icons.favorite_sharp,
                                                        color:
                                                            Color(0xFFF81D2A),
                                                        size: 25.0,
                                                      ),
                                                      offIcon: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 25.0,
                                                      ),
                                                    ),
                                                    Builder(
                                                      builder: (context) =>
                                                          Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    1.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'VIEWALL_PAGE_Icon_byz83wz3_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Icon_alert_dialog');
                                                            await showAlignedDialog(
                                                              context: context,
                                                              isGlobal: false,
                                                              avoidOverflow:
                                                                  true,
                                                              targetAnchor:
                                                                  const AlignmentDirectional(
                                                                          1.0,
                                                                          1.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                              followerAnchor:
                                                                  const AlignmentDirectional(
                                                                          1.0,
                                                                          1.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                              builder:
                                                                  (dialogContext) {
                                                                return Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              dialogContext)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Card11OptionsWidget(
                                                                      itemref:
                                                                          staggeredViewItemsRecord
                                                                              .reference,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .shopping_bag_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 26.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            if (staggeredViewItemsRecord
                                                    .discount !=
                                                0)
                                              Text(
                                                formatNumber(
                                                  staggeredViewItemsRecord
                                                      .price,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.periodDecimal,
                                                  currency: '₹',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 5.0, 1.0),
                                                child: Text(
                                                  formatNumber(
                                                    staggeredViewItemsRecord
                                                        .price,
                                                    formatType:
                                                        FormatType.custom,
                                                    currency: '₹',
                                                    format: '##,##,###',
                                                    locale: '',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily),
                                                      ),
                                                ),
                                              ),
                                            ),
                                            if (staggeredViewItemsRecord
                                                    .discount ==
                                                0)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'NEW-IN',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            if (staggeredViewItemsRecord
                                                    .discount !=
                                                0)
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 0.0, 0.0),
                                                  child: RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: '20 ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: const Color(
                                                                    0xFFE06D26),
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                        const TextSpan(
                                                          text: '%OFF',
                                                          style: TextStyle(),
                                                        )
                                                      ],
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: const Color(
                                                                    0xFFE06D26),
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width >
                                                  1000.0
                                              ? 15.0
                                              : 0.0,
                                          0.0,
                                        ),
                                        0.0,
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width >
                                                  1000.0
                                              ? 15.0
                                              : 0.0,
                                          0.0,
                                        ),
                                        0.0),
                                    child: Container(
                                      decoration: const BoxDecoration(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              if (_model.dropDownValue == 'LOW TO HIGH')
                Expanded(
                  child: StreamBuilder<List<ItemsRecord>>(
                    stream: queryItemsRecord(
                      queryBuilder: (itemsRecord) => itemsRecord
                          .where(
                            'style',
                            isEqualTo: _model.choiceChipsValue != ''
                                ? _model.choiceChipsValue
                                : null,
                          )
                          .orderBy('price'),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 20.0,
                            height: 20.0,
                            child: SpinKitWave(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 20.0,
                            ),
                          ),
                        );
                      }
                      List<ItemsRecord> staggeredViewItemsRecordList =
                          snapshot.data!;

                      return MasonryGridView.builder(
                        gridDelegate:
                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              MediaQuery.sizeOf(context).width > 1200.0 ? 4 : 2,
                        ),
                        itemCount: staggeredViewItemsRecordList.length,
                        itemBuilder: (context, staggeredViewIndex) {
                          final staggeredViewItemsRecord =
                              staggeredViewItemsRecordList[staggeredViewIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Container(
                              height: () {
                                if (MediaQuery.sizeOf(context).width < 1000.0) {
                                  return 320.0;
                                } else if (MediaQuery.sizeOf(context).width >
                                    1000.0) {
                                  return 500.0;
                                } else {
                                  return 320.0;
                                }
                              }(),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'VIEWALL_PAGE_Image_omqbbo47_ON_TAP');
                                        if (MediaQuery.sizeOf(context).width <
                                            800.0) {
                                          logFirebaseEvent('Image_navigate_to');

                                          context.pushNamed(
                                            'ProductDetail',
                                            queryParameters: {
                                              'itemRef': serializeParam(
                                                staggeredViewItemsRecord
                                                    .reference,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        } else {
                                          logFirebaseEvent('Image_navigate_to');

                                          context.pushNamed(
                                            'ProductDetailCopyCopyCopy',
                                            queryParameters: {
                                              'itemRef': serializeParam(
                                                staggeredViewItemsRecord
                                                    .reference,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        }
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.network(
                                          staggeredViewItemsRecord
                                              .images.firstOrNull!,
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                1000.0) {
                                              return 200.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width >
                                                1000.0) {
                                              return 320.0;
                                            } else {
                                              return 200.0;
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                1000.0) {
                                              return 300.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width >
                                                1000.0) {
                                              return 460.0;
                                            } else {
                                              return 300.0;
                                            }
                                          }(),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          1000.0) {
                                        return 180.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width >
                                          1000.0) {
                                        return 300.0;
                                      } else {
                                        return 180.0;
                                      }
                                    }(),
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 1.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        staggeredViewItemsRecord
                                                            .brand,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        staggeredViewItemsRecord
                                                            .name
                                                            .maybeHandleOverflow(
                                                          maxChars: 10,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: 84.0,
                                                height: 36.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    ToggleIcon(
                                                      onPressed: () async {
                                                        safeSetState(
                                                          () => FFAppState().gav.contains(staggeredViewItemsRecord.reference)
                                                              ? FFAppState().removeFromGav(
                                                                  staggeredViewItemsRecord
                                                                      .reference)
                                                              : FFAppState().addToGav(
                                                                  staggeredViewItemsRecord
                                                                      .reference),
                                                        );
                                                      },
                                                      value: FFAppState()
                                                          .gav
                                                          .contains(
                                                              staggeredViewItemsRecord
                                                                  .reference),
                                                      onIcon: const Icon(
                                                        Icons.favorite_sharp,
                                                        color:
                                                            Color(0xFFF81D2A),
                                                        size: 25.0,
                                                      ),
                                                      offIcon: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 25.0,
                                                      ),
                                                    ),
                                                    Builder(
                                                      builder: (context) =>
                                                          Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    1.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'VIEWALL_PAGE_Icon_iu12cftu_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Icon_alert_dialog');
                                                            await showAlignedDialog(
                                                              context: context,
                                                              isGlobal: false,
                                                              avoidOverflow:
                                                                  true,
                                                              targetAnchor:
                                                                  const AlignmentDirectional(
                                                                          1.0,
                                                                          1.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                              followerAnchor:
                                                                  const AlignmentDirectional(
                                                                          1.0,
                                                                          1.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                              builder:
                                                                  (dialogContext) {
                                                                return Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              dialogContext)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Card11OptionsWidget(
                                                                      itemref:
                                                                          staggeredViewItemsRecord
                                                                              .reference,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .shopping_bag_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 26.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            if (staggeredViewItemsRecord
                                                    .discount !=
                                                0)
                                              Text(
                                                formatNumber(
                                                  staggeredViewItemsRecord
                                                      .price,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.periodDecimal,
                                                  currency: '₹',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 5.0, 1.0),
                                                child: Text(
                                                  formatNumber(
                                                    staggeredViewItemsRecord
                                                        .price,
                                                    formatType:
                                                        FormatType.custom,
                                                    currency: '₹',
                                                    format: '##,##,###',
                                                    locale: '',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily),
                                                      ),
                                                ),
                                              ),
                                            ),
                                            if (staggeredViewItemsRecord
                                                    .discount ==
                                                0)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'NEW-IN',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            if (staggeredViewItemsRecord
                                                    .discount !=
                                                0)
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 0.0, 0.0),
                                                  child: RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: '20 ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: const Color(
                                                                    0xFFE06D26),
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                        const TextSpan(
                                                          text: '%OFF',
                                                          style: TextStyle(),
                                                        )
                                                      ],
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: const Color(
                                                                    0xFFE06D26),
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width >
                                                  1000.0
                                              ? 15.0
                                              : 0.0,
                                          0.0,
                                        ),
                                        0.0,
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width >
                                                  1000.0
                                              ? 15.0
                                              : 0.0,
                                          0.0,
                                        ),
                                        0.0),
                                    child: Container(
                                      decoration: const BoxDecoration(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              if (_model.dropDownValue == 'HIGH TO LOW')
                Expanded(
                  child: StreamBuilder<List<ItemsRecord>>(
                    stream: queryItemsRecord(
                      queryBuilder: (itemsRecord) => itemsRecord
                          .where(
                            'style',
                            isEqualTo: _model.choiceChipsValue != ''
                                ? _model.choiceChipsValue
                                : null,
                          )
                          .orderBy('price', descending: true),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 20.0,
                            height: 20.0,
                            child: SpinKitWave(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 20.0,
                            ),
                          ),
                        );
                      }
                      List<ItemsRecord> staggeredViewItemsRecordList =
                          snapshot.data!;

                      return MasonryGridView.builder(
                        gridDelegate:
                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              MediaQuery.sizeOf(context).width > 1200.0 ? 4 : 2,
                        ),
                        itemCount: staggeredViewItemsRecordList.length,
                        itemBuilder: (context, staggeredViewIndex) {
                          final staggeredViewItemsRecord =
                              staggeredViewItemsRecordList[staggeredViewIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Container(
                              height: () {
                                if (MediaQuery.sizeOf(context).width < 1000.0) {
                                  return 320.0;
                                } else if (MediaQuery.sizeOf(context).width >
                                    1000.0) {
                                  return 500.0;
                                } else {
                                  return 320.0;
                                }
                              }(),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'VIEWALL_PAGE_Image_0p0uym5j_ON_TAP');
                                        if (MediaQuery.sizeOf(context).width <
                                            800.0) {
                                          logFirebaseEvent('Image_navigate_to');

                                          context.pushNamed(
                                            'ProductDetail',
                                            queryParameters: {
                                              'itemRef': serializeParam(
                                                staggeredViewItemsRecord
                                                    .reference,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        } else {
                                          logFirebaseEvent('Image_navigate_to');

                                          context.pushNamed(
                                            'ProductDetailCopyCopyCopy',
                                            queryParameters: {
                                              'itemRef': serializeParam(
                                                staggeredViewItemsRecord
                                                    .reference,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        }
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.network(
                                          staggeredViewItemsRecord
                                              .images.firstOrNull!,
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                1000.0) {
                                              return 200.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width >
                                                1000.0) {
                                              return 320.0;
                                            } else {
                                              return 200.0;
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                1000.0) {
                                              return 300.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width >
                                                1000.0) {
                                              return 460.0;
                                            } else {
                                              return 300.0;
                                            }
                                          }(),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          1000.0) {
                                        return 180.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width >
                                          1000.0) {
                                        return 300.0;
                                      } else {
                                        return 180.0;
                                      }
                                    }(),
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 1.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        staggeredViewItemsRecord
                                                            .brand,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        staggeredViewItemsRecord
                                                            .name
                                                            .maybeHandleOverflow(
                                                          maxChars: 10,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: 84.0,
                                                height: 36.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    ToggleIcon(
                                                      onPressed: () async {
                                                        safeSetState(
                                                          () => FFAppState().gav.contains(staggeredViewItemsRecord.reference)
                                                              ? FFAppState().removeFromGav(
                                                                  staggeredViewItemsRecord
                                                                      .reference)
                                                              : FFAppState().addToGav(
                                                                  staggeredViewItemsRecord
                                                                      .reference),
                                                        );
                                                      },
                                                      value: FFAppState()
                                                          .gav
                                                          .contains(
                                                              staggeredViewItemsRecord
                                                                  .reference),
                                                      onIcon: const Icon(
                                                        Icons.favorite_sharp,
                                                        color:
                                                            Color(0xFFF81D2A),
                                                        size: 25.0,
                                                      ),
                                                      offIcon: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 25.0,
                                                      ),
                                                    ),
                                                    Builder(
                                                      builder: (context) =>
                                                          Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    1.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'VIEWALL_PAGE_Icon_1vgdk65k_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Icon_alert_dialog');
                                                            await showAlignedDialog(
                                                              context: context,
                                                              isGlobal: false,
                                                              avoidOverflow:
                                                                  true,
                                                              targetAnchor:
                                                                  const AlignmentDirectional(
                                                                          1.0,
                                                                          1.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                              followerAnchor:
                                                                  const AlignmentDirectional(
                                                                          1.0,
                                                                          1.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                              builder:
                                                                  (dialogContext) {
                                                                return Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              dialogContext)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Card11OptionsWidget(
                                                                      itemref:
                                                                          staggeredViewItemsRecord
                                                                              .reference,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .shopping_bag_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 26.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            if (staggeredViewItemsRecord
                                                    .discount !=
                                                0)
                                              Text(
                                                formatNumber(
                                                  staggeredViewItemsRecord
                                                      .price,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.periodDecimal,
                                                  currency: '₹',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 5.0, 1.0),
                                                child: Text(
                                                  formatNumber(
                                                    staggeredViewItemsRecord
                                                        .price,
                                                    formatType:
                                                        FormatType.custom,
                                                    currency: '₹',
                                                    format: '##,##,###',
                                                    locale: '',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily),
                                                      ),
                                                ),
                                              ),
                                            ),
                                            if (staggeredViewItemsRecord
                                                    .discount ==
                                                0)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'NEW-IN',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            if (staggeredViewItemsRecord
                                                    .discount !=
                                                0)
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 0.0, 0.0),
                                                  child: RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: '20 ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: const Color(
                                                                    0xFFE06D26),
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                        const TextSpan(
                                                          text: '%OFF',
                                                          style: TextStyle(),
                                                        )
                                                      ],
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: const Color(
                                                                    0xFFE06D26),
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width >
                                                  1000.0
                                              ? 15.0
                                              : 0.0,
                                          0.0,
                                        ),
                                        0.0,
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width >
                                                  1000.0
                                              ? 15.0
                                              : 0.0,
                                          0.0,
                                        ),
                                        0.0),
                                    child: Container(
                                      decoration: const BoxDecoration(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
