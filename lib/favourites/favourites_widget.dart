import '/backend/backend.dart';
import '/components/card11_options_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favourites_model.dart';
export 'favourites_model.dart';

class FavouritesWidget extends StatefulWidget {
  const FavouritesWidget({super.key});

  @override
  State<FavouritesWidget> createState() => _FavouritesWidgetState();
}

class _FavouritesWidgetState extends State<FavouritesWidget> {
  late FavouritesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavouritesModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'favourites'});
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 10.0),
                child: Container(
                  width: 300.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('FAVOURITES_PAGE_CART_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('cart6Copy');
                        },
                        text: 'CART',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 8.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'FAVOURITES_PAGE_FAVOURITES_BTN_ON_TAP');
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed('favourites');
                          },
                          text: 'FAVOURITES',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 4.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 15.0, 0.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'YOUR FAVOURITES',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Roboto'),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    final faver = FFAppState().gav.toList();

                    return MasonryGridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            MediaQuery.sizeOf(context).width > 1200.0 ? 4 : 2,
                      ),
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      itemCount: faver.length,
                      itemBuilder: (context, faverIndex) {
                        final faverItem = faver[faverIndex];
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 5.0, 0.0),
                          child: StreamBuilder<ItemsRecord>(
                            stream: ItemsRecord.getDocument(faverItem),
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

                              final containerItemsRecord = snapshot.data!;

                              return Container(
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      1000.0) {
                                    return 180.0;
                                  } else if (MediaQuery.sizeOf(context).width >
                                      1000.0) {
                                    return 300.0;
                                  } else {
                                    return 180.0;
                                  }
                                }(),
                                height: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      1000.0) {
                                    return 290.0;
                                  } else if (MediaQuery.sizeOf(context).width >
                                      1000.0) {
                                    return 470.0;
                                  } else {
                                    return 290.0;
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
                                              'FAVOURITES_PAGE_Image_mhya4d29_ON_TAP');
                                          if (MediaQuery.sizeOf(context).width <
                                              800.0) {
                                            logFirebaseEvent(
                                                'Image_navigate_to');

                                            context.pushNamed(
                                              'ProductDetail',
                                              queryParameters: {
                                                'itemRef': serializeParam(
                                                  faverItem,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            logFirebaseEvent(
                                                'Image_navigate_to');

                                            context.pushNamed(
                                              'ProductDetailCopyCopyCopy',
                                              queryParameters: {
                                                'itemRef': serializeParam(
                                                  faverItem,
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
                                            containerItemsRecord
                                                .images.firstOrNull!,
                                            width: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  1000.0) {
                                                return 180.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width >
                                                  1000.0) {
                                                return 300.0;
                                              } else {
                                                return 180.0;
                                              }
                                            }(),
                                            height: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  1000.0) {
                                                return 270.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width >
                                                  1000.0) {
                                                return 450.0;
                                              } else {
                                                return 270.0;
                                              }
                                            }(),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
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
                                        child: Padding(
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
                                                        containerItemsRecord
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
                                                        containerItemsRecord
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
                                                          () => FFAppState().gav.contains(containerItemsRecord.reference)
                                                              ? FFAppState().removeFromGav(
                                                                  containerItemsRecord
                                                                      .reference)
                                                              : FFAppState().addToGav(
                                                                  containerItemsRecord
                                                                      .reference),
                                                        );
                                                      },
                                                      value: FFAppState()
                                                          .gav
                                                          .contains(
                                                              containerItemsRecord
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
                                                          InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'FAVOURITES_PAGE_Icon_qu70iq7r_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Icon_alert_dialog');
                                                          await showAlignedDialog(
                                                            context: context,
                                                            isGlobal: false,
                                                            avoidOverflow: true,
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
                                                                        faverItem,
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
                                                          size: 25.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
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
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 3.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              if (containerItemsRecord
                                                      .discount !=
                                                  0)
                                                Text(
                                                  formatNumber(
                                                    containerItemsRecord.price,
                                                    formatType:
                                                        FormatType.custom,
                                                    currency: '₹',
                                                    format: '##,##,###',
                                                    locale: '',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                      containerItemsRecord
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                              if (containerItemsRecord
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                              if (containerItemsRecord
                                                      .discount !=
                                                  0)
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
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
                                                                  fontSize:
                                                                      10.0,
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
                                                                  fontSize:
                                                                      10.0,
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
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
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
