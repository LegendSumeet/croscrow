import '/auth/base_auth_user_provider.dart';
import '/backend/backend.dart';
import '/components/card11_options_widget.dart';
import '/components/login_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'homepage_copy_copy_copy_copy_model.dart';
export 'homepage_copy_copy_copy_copy_model.dart';

class HomepageCopyCopyCopyCopyWidget extends StatefulWidget {
  const HomepageCopyCopyCopyCopyWidget({super.key});

  @override
  State<HomepageCopyCopyCopyCopyWidget> createState() => _HomepageCopyCopyCopyCopyWidgetState();
}

class _HomepageCopyCopyCopyCopyWidgetState extends State<HomepageCopyCopyCopyCopyWidget> with AutomaticKeepAliveClientMixin {
  late HomepageCopyCopyCopyCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    debugPrint('HomepageCopyCopyCopyCopyWidget: $loggedIn');

    super.initState();
    _model = createModel(context, () => HomepageCopyCopyCopyCopyModel());

    // Log the screen view event.
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'homepage'});

    debugPrint('HomepageCopyCopyCopyCopyWidget: $loggedIn');

    // // Show login dialog if the user is not logged in.
    // if (!loggedIn) {
    //   SchedulerBinding.instance.addPostFrameCallback((_) async {
    //     logFirebaseEvent('homepage_show_login_dialog');
    //     await showDialog(
    //       context: context,
    //       barrierDismissible:
    //           true, // Allow dismissing dialog by tapping outside.
    //       builder: (dialogContext) => Dialog(
    //         elevation: 8,
    //         backgroundColor: Colors.transparent,
    //         child: GestureDetector(
    //           onTap: () {
    //             // Unfocus any active text fields when the dialog is tapped.
    //             FocusManager.instance.primaryFocus?.unfocus();
    //           },
    //           child: const LoginWidget(),
    //         ),
    //       ),
    //     );
    //   });
    // }

    // Trigger state updates safely.
    // WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    context.watch<FFAppState>();
    // Define common styles as constants for reusability
    const double itemHeight = 380.0;
    const double itemWidth = 291.0;
    const double spacing = 5.0;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      drawer: Drawer(
        elevation: 16.0,
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryText,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Icon_uc94rvjl_ON');
                          logFirebaseEvent('Icon_close_dialog_drawer_etc');
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close_fullscreen,
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 300.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  child: Builder(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Row_hwp8plvh_ON_');
                        if (loggedIn == true) {
                          logFirebaseEvent('Row_navigate_to');

                          context.pushNamed('PROFILE2');
                        } else {
                          logFirebaseEvent('Row_alert_dialog');
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                child: GestureDetector(
                                  onTap: () {
                                    FocusScope.of(dialogContext).unfocus();
                                    FocusManager.instance.primaryFocus?.unfocus();
                                  },
                                  child: const LoginWidget(),
                                ),
                              );
                            },
                          );
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.person,
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                            size: 40.0,
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'PROFILE',
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                StreamBuilder<List<BrandsRecord>>(
                  stream: queryBrandsRecord(),
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
                    List<BrandsRecord> containerBrandsRecordList = snapshot.data!;

                    return Container(
                      width: 313.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model.dropDownValueController1 ??= FormFieldController<String>(null),
                                    options: const ['SHIRT', 'TSHIRT', 'CARGO'],
                                    onChanged: (val) async {
                                      safeSetState(() => _model.dropDownValue1 = val);
                                      logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_DropDown_qsidntb');
                                      logFirebaseEvent('DropDown_navigate_to');

                                      context.pushNamed(
                                        'stylepage',
                                        queryParameters: {
                                          'itemstyle': serializeParam(
                                            _model.dropDownValue1,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    width: 200.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                        ),
                                    hintText: 'MALE',
                                    fillColor: FlutterFlowTheme.of(context).primaryText,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model.dropDownValueController2 ??= FormFieldController<String>(null),
                                    options: const ['DRESS', 'SETS'],
                                    onChanged: (val) async {
                                      safeSetState(() => _model.dropDownValue2 = val);
                                      logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_DropDown_rxk1gxk');
                                      logFirebaseEvent('DropDown_navigate_to');

                                      context.pushNamed(
                                        'stylepage',
                                        queryParameters: {
                                          'itemstyle': serializeParam(
                                            _model.dropDownValue2,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    width: 200.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                        ),
                                    hintText: 'FEMALE',
                                    fillColor: FlutterFlowTheme.of(context).primaryText,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_changePassword_O');
                              logFirebaseEvent('changePassword_navigate_to');

                              context.pushNamed('brands');
                            },
                            child: Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 0.0,
                                    color: FlutterFlowTheme.of(context).alternate,
                                    offset: const Offset(
                                      0.0,
                                      1.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(0.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'BRANDS',
                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                              ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                            child: Icon(
                                              Icons.chevron_right_rounded,
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_editProfile_ON_T');
                              logFirebaseEvent('editProfile_navigate_to');

                              context.pushNamed('style');
                            },
                            child: Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 0.0,
                                    color: FlutterFlowTheme.of(context).alternate,
                                    offset: const Offset(
                                      0.0,
                                      1.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(0.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'STYLES',
                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                              ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                            child: Icon(
                                              Icons.chevron_right_rounded,
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_submitFeature_ON');
                                if (loggedIn == true) {
                                  logFirebaseEvent('submitFeature_navigate_to');

                                  context.pushNamed('orderspage');
                                } else {
                                  logFirebaseEvent('submitFeature_alert_dialog');
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext).unfocus();
                                            FocusManager.instance.primaryFocus?.unfocus();
                                          },
                                          child: const LoginWidget(),
                                        ),
                                      );
                                    },
                                  );
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(0.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'ORDERS',
                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(1.0, 0.0),
                                              child: Icon(
                                                Icons.chevron_right_rounded,
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 12.0),
                              child: Text(
                                'SUPPORT',
                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                      fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 28.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 0.0,
                                    color: FlutterFlowTheme.of(context).alternate,
                                    offset: const Offset(
                                      0.0,
                                      1.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Column_fz56pj6r_');
                                    logFirebaseEvent('Column_navigate_to');

                                    context.pushNamed('SUPPORT');
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'CONTACT',
                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  fontSize: 9.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 28.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  offset: const Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Column_gr6w9jge_');
                                  logFirebaseEvent('Column_navigate_to');

                                  context.pushNamed('SUPPORT');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Text_hvb5pmdy_ON');
                                            logFirebaseEvent('Text_navigate_to');

                                            context.pushNamed('branddata');
                                          },
                                          child: Text(
                                            'SUBMIT A BUG',
                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  fontSize: 9.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 28.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  offset: const Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Column_nrj0hpi7_');
                                  logFirebaseEvent('Column_navigate_to');

                                  context.pushNamed('shippingpolicy');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'SHIPPING POLICY',
                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 28.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  offset: const Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Column_8nqhaeu4_');
                                  logFirebaseEvent('Column_navigate_to');

                                  context.pushNamed('privacy');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'PRIVACY POLICY',
                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 28.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  offset: const Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Column_wcdyp9c1_');
                                  logFirebaseEvent('Column_navigate_to');

                                  context.pushNamed('termsandcondition');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'TERMS AND CONDITIONS',
                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 28.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  offset: const Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Column_4om49zn2_');
                                  logFirebaseEvent('Column_navigate_to');

                                  context.pushNamed('returnpolicycancellation');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'CANCELLATION AND REFUND POLICY',
                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                fontSize: 9.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                              ),
                                        ),
                                      ],
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Untitled_design_(34).png',
                      width: 255.0,
                      height: 240.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(11.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'ALL RIGHTS RESERVED ©',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 5.0)),
            ),
          ),
        ),
      ),
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
                  logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Icon_6j8jshky_ON');
                  logFirebaseEvent('Icon_drawer');
                  scaffoldKey.currentState!.openDrawer();
                },
                child: Icon(
                  Icons.dehaze,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
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
              logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Image_vkbb8elj_O');
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
                    logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Icon_m7qdtm3m_ON');
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              OptimizedCarousel(),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 16,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildCategoryItem(
                        context: context,
                        imagePath: 'assets/images/Untitled_design_(23).png',
                        label: 'BRANDS',
                        onTap: () {
                          logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Column_a6n070no_');
                          logFirebaseEvent('Column_navigate_to');
                          context.pushNamed('brands');
                        },
                      ),
                      buildCategoryItem(
                        context: context,
                        imagePath: 'assets/images/Untitled_(Instagram_Post)_(9).png',
                        label: 'TOPS',
                        onTap: () {
                          context.pushNamed(
                            'catpage',
                            queryParameters: {'category': 'TOPS'},
                          );
                        },
                      ),
                      buildCategoryItem(
                        context: context,
                        imagePath: 'assets/images/Untitled_(Instagram_Post)_(8).png',
                        label: 'BOTTOMS',
                        onTap: () {
                          logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Column_yw779kdh_');
                          logFirebaseEvent('Column_navigate_to');
                          context.pushNamed(
                            'catpage',
                            queryParameters: {
                              'category': serializeParam(
                                'BOTTOMS',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                      ),
                      buildCategoryItem(
                        context: context,
                        imagePath: 'assets/images/Untitled_(Instagram_Post)_(12).png',
                        label: 'ACCESSORIES',
                        onTap: () {
                          logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Column_gqbc6o57_');
                          logFirebaseEvent('Column_navigate_to');
                          context.pushNamed(
                            'catpage',
                            queryParameters: {
                              'category': serializeParam(
                                'ACCESSORIES',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                      ),
                      buildCategoryItem(
                        context: context,
                        imagePath: 'assets/images/Untitled_(Instagram_Post)_(11).png',
                        label: 'MAGNET',
                        onTap: () {
                          logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Column_hoyb6jw8_');
                          logFirebaseEvent('Column_navigate_to');
                          context.pushNamed(
                            'catpage',
                            queryParameters: {
                              'category': serializeParam(
                                'MAGNET',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'BEST SELLING',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 0.0, 0.0),
                child: StreamBuilder<List<ItemsRecord>>(
                  stream: queryItemsRecord(
                    queryBuilder: (itemsRecord) => itemsRecord.where('category', isEqualTo: 'ACCESSORIES').orderBy('name'),
                  ),
                  builder: (context, snapshot) {
                    // Show loading spinner if no data is available
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

                    List<ItemsRecord> rowItemsRecordList = snapshot.data!;

                    // Get screen width once for responsiveness
                    double screenWidth = MediaQuery.sizeOf(context).width;

                    // Helper function to calculate item dimensions
                    double itemWidth() {
                      if (screenWidth < kBreakpointSmall) return 132.0;
                      if (screenWidth < kBreakpointMedium) return 172.0;
                      if (screenWidth < kBreakpointLarge) return 222.0;
                      return 222.0;
                    }

                    double itemHeight() {
                      if (screenWidth < kBreakpointSmall) return 130.0;
                      if (screenWidth < kBreakpointMedium) return 170.0;
                      if (screenWidth < kBreakpointLarge) return 220.0;
                      return 220.0;
                    }

                    // Helper function for image dimensions
                    double imageWidth() {
                      if (screenWidth < kBreakpointSmall) return 110.0;
                      if (screenWidth < kBreakpointMedium) return 149.0;
                      if (screenWidth < kBreakpointLarge) return 199.0;
                      return 199.0;
                    }

                    double imageHeight() {
                      return imageWidth();
                    }

                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(rowItemsRecordList.length, (rowIndex) {
                          final rowItemsRecord = rowItemsRecordList[rowIndex];
                          return Container(
                            width: itemWidth(),
                            height: itemHeight(),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                width: 0.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent('Image_navigate_to');
                                    String routeName = (screenWidth < 800.0) ? 'ProductDetail' : 'ProductDetailCopyCopyCopy';

                                    context.pushNamed(
                                      routeName,
                                      queryParameters: {
                                        'itemRef': serializeParam(
                                          rowItemsRecord.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4.0),
                                    child: Image.network(
                                      loadingBuilder: (context, child, loadingProgress) {
                                        if (loadingProgress == null) {
                                          return child;
                                        }
                                        return Center(
                                          child: CircularProgressIndicator(
                                            value: loadingProgress.expectedTotalBytes != null
                                                ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                                : null,
                                          ),
                                        );
                                      },
                                      rowItemsRecord.images.firstOrNull!,
                                      width: imageWidth(),
                                      height: imageHeight(),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    rowItemsRecord.name,
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).divide(const SizedBox(width: 5.0)),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'SHOP BY CATEGORIES',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Text_v5xi8aqc_ON');
                          logFirebaseEvent('Text_navigate_to');

                          context.pushNamed('style');
                        },
                        child: Text(
                          'VIEW ALL',
                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Roboto',
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 16.0, 4.0),
                child: StreamBuilder<List<ItemstyleRecord>>(
                  stream: queryItemstyleRecord(
                    queryBuilder: (itemstyleRecord) => itemstyleRecord.orderBy('uniquestyle'),
                  ),
                  builder: (context, snapshot) {
                    // Display loading spinner while fetching data
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

                    final rowItemstyleRecordList = snapshot.data!;

                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          rowItemstyleRecordList.length,
                          (rowIndex) {
                            final rowItemstyleRecord = rowItemstyleRecordList[rowIndex];
                            return Padding(
                              padding: const EdgeInsets.only(right: spacing),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Image_b64gp24b_O');
                                  logFirebaseEvent('Image_navigate_to');

                                  context.pushNamed(
                                    'stylepage',
                                    queryParameters: {
                                      'itemstyle': serializeParam(
                                        rowItemstyleRecord.stylename,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    width: itemWidth,
                                    height: itemHeight,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                    ),
                                    child: Image.network(
                                      rowItemstyleRecord.image,
                                      fit: BoxFit.contain,
                                      loadingBuilder: (context, child, loadingProgress) {
                                        if (loadingProgress == null) {
                                          return child;
                                        }
                                        return Center(
                                          child: CircularProgressIndicator(
                                            value: loadingProgress.expectedTotalBytes != null
                                                ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                                : null,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'FEATURED COLLECTION',
                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Roboto',
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                              ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Text_gykiyhx6_ON');
                              logFirebaseEvent('Text_navigate_to');

                              context.pushNamed('VIEWALL');
                            },
                            child: Text(
                              'VIEW ALL',
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: (MediaQuery.sizeOf(context).width > 1200.0 ? 1500 : 1280).toDouble(),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: StreamBuilder<List<ItemsRecord>>(
                  stream: queryItemsRecord(
                    queryBuilder: (itemsRecord) => itemsRecord.orderBy('sortno'),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: SpinKitWave(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                            size: 20,
                          ),
                        ),
                      );
                    }
                    List<ItemsRecord> staggeredViewItemsRecordList = snapshot.data!;

                    return MasonryGridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.sizeOf(context).width > 1200.0 ? 4 : 2,
                      ),
                      itemCount: staggeredViewItemsRecordList.length,
                      itemBuilder: (context, staggeredViewIndex) {
                        final staggeredViewItemsRecord = staggeredViewItemsRecordList[staggeredViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                          child: Container(
                            height: () {
                              if (MediaQuery.sizeOf(context).width < 1000.0) {
                                return 320.0;
                              } else if (MediaQuery.sizeOf(context).width > 1000.0) {
                                return 500.0;
                              } else {
                                return 320.0;
                              }
                            }(),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryBackground,
                              borderRadius: BorderRadius.circular(4),
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
                                      logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Image_02jkvf85_O');
                                      if (MediaQuery.sizeOf(context).width < 800.0) {
                                        logFirebaseEvent('Image_navigate_to');

                                        context.pushNamed(
                                          'ProductDetail',
                                          queryParameters: {
                                            'itemRef': serializeParam(
                                              staggeredViewItemsRecord.reference,
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
                                              staggeredViewItemsRecord.reference,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0),
                                      child: Image.network(
                                        staggeredViewItemsRecord.images.firstOrNull!,
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width < 1000.0) {
                                            return 200.0;
                                          } else if (MediaQuery.sizeOf(context).width > 1000.0) {
                                            return 320.0;
                                          } else {
                                            return 200.0;
                                          }
                                        }(),
                                        height: () {
                                          if (MediaQuery.sizeOf(context).width < 1000.0) {
                                            return 300.0;
                                          } else if (MediaQuery.sizeOf(context).width > 1000.0) {
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
                                    if (MediaQuery.sizeOf(context).width < 1000.0) {
                                      return 180.0;
                                    } else if (MediaQuery.sizeOf(context).width > 1000.0) {
                                      return 300.0;
                                    } else {
                                      return 180.0;
                                    }
                                  }(),
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment: AlignmentDirectional(-1, -1),
                                                  child: Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                    child: Text(
                                                      staggeredViewItemsRecord.brand,
                                                      style: FlutterFlowTheme.of(context).titleSmall.override(
                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                        fontSize: 10,
                                                        letterSpacing: 0.0,
                                                        fontWeight: FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts.asMap()
                                                            .containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: AlignmentDirectional(-1, -1),
                                                  child: Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                    child: Text(
                                                      staggeredViewItemsRecord.name.maybeHandleOverflow(
                                                        maxChars: 10,
                                                      ),
                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts.asMap()
                                                            .containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: 84,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  ToggleIcon(
                                                    onPressed: () async {
                                                      safeSetState(
                                                            () => FFAppState().gav.contains(staggeredViewItemsRecord.reference)
                                                            ? FFAppState().removeFromGav(staggeredViewItemsRecord.reference)
                                                            : FFAppState().addToGav(staggeredViewItemsRecord.reference),
                                                      );
                                                    },
                                                    value: FFAppState().gav.contains(staggeredViewItemsRecord.reference),
                                                    onIcon: Icon(
                                                      Icons.favorite_sharp,
                                                      color: Color(0xFFF81D2A),
                                                      size: 25,
                                                    ),
                                                    offIcon: Icon(
                                                      Icons.favorite_border,
                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                      size: 25,
                                                    ),
                                                  ),
                                                  Builder(
                                                    builder: (context) => Padding(
                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                                                      child: InkWell(
                                                        splashColor: Colors.transparent,
                                                        focusColor: Colors.transparent,
                                                        hoverColor: Colors.transparent,
                                                        highlightColor: Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_Icon_1yi5re7q_ON');
                                                          logFirebaseEvent('Icon_alert_dialog');
                                                          await showAlignedDialog(
                                                            context: context,
                                                            isGlobal: false,
                                                            avoidOverflow: true,
                                                            targetAnchor: AlignmentDirectional(1, 1).resolve(Directionality.of(context)),
                                                            followerAnchor:
                                                            AlignmentDirectional(1, 1).resolve(Directionality.of(context)),
                                                            builder: (dialogContext) {
                                                              return Material(
                                                                color: Colors.transparent,
                                                                child: GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(dialogContext).unfocus();
                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                  },
                                                                  child: Card11OptionsWidget(
                                                                    itemref: staggeredViewItemsRecord.reference,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                        child: Icon(
                                                          Icons.shopping_bag_outlined,
                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                          size: 26,
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
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          if (staggeredViewItemsRecord.discount != 0)
                                            Text(
                                              formatNumber(
                                                staggeredViewItemsRecord.price,
                                                formatType: FormatType.decimal,
                                                decimalType: DecimalType.periodDecimal,
                                                currency: '₹',
                                              ),
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                fontSize: 11,
                                                letterSpacing: 0.0,
                                                decoration: TextDecoration.lineThrough,
                                                useGoogleFonts:
                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                              ),
                                            ),
                                          Align(
                                            alignment: AlignmentDirectional(-1, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 5, 1),
                                              child: Text(
                                                formatNumber(
                                                  staggeredViewItemsRecord.price,
                                                  formatType: FormatType.custom,
                                                  currency: '₹',
                                                  format: '##,##,###',
                                                  locale: '',
                                                ),
                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                  GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (staggeredViewItemsRecord.discount == 0)
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 5, 0),
                                              child: Text(
                                                'NEW-IN',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                  fontSize: 10,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                  GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                ),
                                              ),
                                            ),
                                          if (staggeredViewItemsRecord.discount != 0)
                                            Align(
                                              alignment: AlignmentDirectional(1, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                                child: RichText(
                                                  textScaler: MediaQuery.of(context).textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '20 ',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                          color: Color(0xFFE06D26),
                                                          fontSize: 10,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts.asMap()
                                                              .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '%OFF',
                                                        style: TextStyle(),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                      color: Color(0xFFE06D26),
                                                      fontSize: 10,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts.asMap()
                                                          .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                        MediaQuery.sizeOf(context).width > 1000.0 ? 15.0 : 0.0,
                                        0.0,
                                      ),
                                      0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width > 1000.0 ? 15.0 : 0.0,
                                        0.0,
                                      ),
                                      0),
                                  child: Container(
                                    decoration: BoxDecoration(),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('HOMECOPY_COPY_COPY_COPY_VIEW_ALL_BTN_ON_');
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed('VIEWALL');
                    },
                    text: 'VIEW ALL',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 40,
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).alternate,
                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                        fontSize: 10,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                      elevation: 0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class OptimizedCarousel extends StatelessWidget {
  final CarouselSliderController _carouselController1 = CarouselSliderController();
  final CarouselSliderController _carouselController2 = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ))
          _buildCarousel(
            context,
            images: [
              'assets/images/Red_Orange_Black_Modern_Typography_Beatitudes_Sermon_Church_Presentation_(1).png',
              'assets/images/Black_Yellow_Modern_Classy_Fashion_Marketing_Presentation_(1).png',
              'assets/images/White_and_Blue_Retro_Gen_Z_Cute_Kpop_Idol_Game_Night_Presentation_(1).png',
            ],
            onTapActions: [
              () => context.pushNamed('VIEWALL'),
              null,
              null,
            ],
            width: 500.0,
            height: 200.0,
            carouselController: _carouselController1,
            initialPage: 2,
          ),
        const SizedBox(height: 5.0),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          _buildCarousel(
            context,
            images: [
              'assets/images/CROSCROW_(3).png',
              'assets/images/CROSCROW_(4).png',
            ],
            onTapActions: [
              () => context.pushNamed('VIEWALL'),
              null,
            ],
            width: 1440.0,
            height: 650.0,
            fit: BoxFit.contain,
            carouselController: _carouselController2,
            initialPage: 1,
          ),
      ],
    );
  }

  Widget _buildCarousel(
    BuildContext context, {
    required List<String> images,
    required List<VoidCallback?> onTapActions,
    required double width,
    required double height,
    required CarouselSliderController carouselController,
    int initialPage = 0,
    BoxFit fit = BoxFit.cover,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
      ),
      child: CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (context, index, realIndex) {
          return GestureDetector(
            onTap: onTapActions[index],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                images[index],
                fit: fit,
              ),
            ),
          );
        },
        carouselController: carouselController,
        options: CarouselOptions(
          initialPage: initialPage,
          viewportFraction: 1.0,
          enlargeCenterPage: true,
          enlargeFactor: 0.25,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayInterval: const Duration(milliseconds: 4800),
          autoPlayCurve: Curves.linear,
        ),
      ),
    );
  }
}

Widget buildCategoryItem({
  required BuildContext context,
  required String imagePath,
  required String label,
  required VoidCallback onTap,
}) {
  final isWideScreen = MediaQuery.of(context).size.width > 1000.0;
  final size = isWideScreen ? 110.0 : 110.0;

  return InkWell(
    splashColor: Colors.transparent,
    focusColor: Colors.transparent,
    hoverColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).textTheme.labelMedium?.color,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w300,
                ),
          ),
        ),
      ],
    ),
  );
}
