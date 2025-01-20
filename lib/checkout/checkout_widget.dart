import 'package:razorpay_web/razorpay_web.dart';
import 'package:ss99/payment/cashfree.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkout_model.dart';
export 'checkout_model.dart';

class CheckoutWidget extends StatefulWidget {
  const CheckoutWidget({
    super.key,
    required this.items,
    required this.item2,
    this.promo,
  });

  final DocumentReference? items;
  final List<DocumentReference>? item2;
  final String? promo;

  @override
  State<CheckoutWidget> createState() => _CheckoutWidgetState();
}

class _CheckoutWidgetState extends State<CheckoutWidget> {
  late CheckoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckoutModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'checkout'});
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.adressTextController ??= TextEditingController();
    _model.adressFocusNode ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.cityTextController ??= TextEditingController();
    _model.cityFocusNode ??= FocusNode();

    _model.pincodeTextController ??= TextEditingController();
    _model.pincodeFocusNode ??= FocusNode();

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
                    logFirebaseEvent('CHECKOUT_PAGE_Icon_jcvrubaz_ON_TAP');
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
                logFirebaseEvent('CHECKOUT_PAGE_Image_gal4clg0_ON_TAP');
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
                      logFirebaseEvent('CHECKOUT_PAGE_Icon_ajst839j_ON_TAP');
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
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              Container(
                                width: 1500.0,
                                height: 300.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                ),
                                child: Builder(
                                  builder: (context) {
                                    final preview = FFAppState().cart.toList();

                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: List.generate(preview.length, (previewIndex) {
                                        final previewItem = preview[previewIndex];
                                        return Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                          child: StreamBuilder<ItemsRecord?>(
                                            stream: ItemsRecord.getDocument(previewItem.menuitemref!),
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

                                              final containerItemsRecord = snapshot.data!;

                                              return Container(
                                                width: 200.0,
                                                height: 300.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  borderRadius: BorderRadius.circular(4.0),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(8.0),
                                                      child: Image.network(
                                                        containerItemsRecord.images.firstOrNull!,
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment: const AlignmentDirectional(1.0, 1.0),
                                                      child: Container(
                                                        width: 25.0,
                                                        height: 25.0,
                                                        decoration: const BoxDecoration(
                                                          color: Color(0x8957636C),
                                                          shape: BoxShape.circle,
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Align(
                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                          child: Text(
                                                            previewItem.size,
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                  fontSize: 10.0,
                                                                  letterSpacing: 0.0,
                                                                  useGoogleFonts:
                                                                      GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                ),
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
                                      }),
                                    );
                                  },
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              desktop: false,
                            ))
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final preview = FFAppState().cart.toList();

                                    return SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: List.generate(preview.length, (previewIndex) {
                                          final previewItem = preview[previewIndex];
                                          return Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                            child: StreamBuilder<ItemsRecord?>(
                                              stream: ItemsRecord.getDocument(previewItem.menuitemref!),
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

                                                final containerItemsRecord = snapshot.data!;

                                                return Container(
                                                  width: 100.0,
                                                  height: 150.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                    borderRadius: BorderRadius.circular(4.0),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius: BorderRadius.circular(8.0),
                                                        child: Image.network(
                                                          containerItemsRecord.images.firstOrNull!,
                                                          width: double.infinity,
                                                          height: double.infinity,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: const AlignmentDirectional(1.0, 1.0),
                                                        child: Container(
                                                          width: 25.0,
                                                          height: 25.0,
                                                          decoration: BoxDecoration(
                                                            color: const Color(0x3157636C),
                                                            borderRadius: BorderRadius.circular(4.0),
                                                            shape: BoxShape.rectangle,
                                                          ),
                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                          child: Align(
                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                            child: Padding(
                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                                                              child: Text(
                                                                previewItem.size.maybeHandleOverflow(
                                                                  maxChars: 2,
                                                                ),
                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                      fontSize: 10.0,
                                                                      letterSpacing: 0.0,
                                                                      useGoogleFonts: GoogleFonts.asMap()
                                                                          .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
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
                                        }).divide(const SizedBox(width: 10.0)),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(-1.0, 1.0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'CONTACT DETAILS',
                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                  fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                  color: const Color(0xD157636C),
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(-1.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                            child: SizedBox(
                                              width: 200.0,
                                              child: TextFormField(
                                                controller: _model.textController1,
                                                focusNode: _model.textFieldFocusNode1,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                        fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                        lineHeight: 3.0,
                                                      ),
                                                  hintText: 'NAME',
                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                        fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                        color: const Color(0xA257636C),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                      ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  errorBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).error,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  focusedErrorBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).error,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  filled: true,
                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                ),
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                    ),
                                                cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                validator: _model.textController1Validator.asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                              child: FlutterFlowDropDown<String>(
                                                controller: _model.dropDownValueController1 ??= FormFieldController<String>(
                                                  _model.dropDownValue1 ??= '+91',
                                                ),
                                                options: const ['+91', '+1', '+971'],
                                                onChanged: (val) => safeSetState(() => _model.dropDownValue1 = val),
                                                width: 87.0,
                                                height: 40.0,
                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                      color: const Color(0xAE57636C),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                    ),
                                                hintText: '+91',
                                                icon: Icon(
                                                  Icons.keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                elevation: 1.0,
                                                borderColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                borderWidth: 0.5,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: const AlignmentDirectional(1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 10.0, 0.0),
                                                  child: SizedBox(
                                                    width: 300.0,
                                                    child: TextFormField(
                                                      controller: _model.textController2,
                                                      focusNode: _model.textFieldFocusNode2,
                                                      autofocus: false,
                                                      textInputAction: TextInputAction.next,
                                                      obscureText: false,
                                                      decoration: InputDecoration(
                                                        isDense: true,
                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                              fontSize: 12.0,
                                                              letterSpacing: 0.0,
                                                              useGoogleFonts:
                                                                  GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                              lineHeight: 3.0,
                                                            ),
                                                        hintText: 'MOBILE NO.',
                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                              color: const Color(0xA257636C),
                                                              fontSize: 12.0,
                                                              letterSpacing: 0.0,
                                                              useGoogleFonts:
                                                                  GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                            ),
                                                        enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                            width: 0.5,
                                                          ),
                                                          borderRadius: BorderRadius.circular(2.0),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                            width: 0.5,
                                                          ),
                                                          borderRadius: BorderRadius.circular(2.0),
                                                        ),
                                                        errorBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: FlutterFlowTheme.of(context).error,
                                                            width: 0.5,
                                                          ),
                                                          borderRadius: BorderRadius.circular(2.0),
                                                        ),
                                                        focusedErrorBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: FlutterFlowTheme.of(context).error,
                                                            width: 0.5,
                                                          ),
                                                          borderRadius: BorderRadius.circular(2.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                      ),
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                          ),
                                                      maxLength: 10,
                                                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                                                      buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                      keyboardType: TextInputType.number,
                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                      validator: _model.textController2Validator.asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(-1.0, 1.0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'ADDRESS',
                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                  fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                  color: const Color(0xCC57636C),
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                              child: SizedBox(
                                                width: 200.0,
                                                child: TextFormField(
                                                  controller: _model.adressTextController,
                                                  focusNode: _model.adressFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelText: 'HOUSE NO , FLAT , APARTMENT',
                                                    labelStyle: FlutterFlowTheme.of(context).labelSmall.override(
                                                          fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                          color: const Color(0xAA57636C),
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                          lineHeight: 3.0,
                                                        ),
                                                    hintStyle: FlutterFlowTheme.of(context).labelSmall.override(
                                                          fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                          color: const Color(0xA257636C),
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                        ),
                                                    enabledBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                        width: 0.5,
                                                      ),
                                                      borderRadius: BorderRadius.circular(2.0),
                                                    ),
                                                    focusedBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                        width: 0.5,
                                                      ),
                                                      borderRadius: BorderRadius.circular(2.0),
                                                    ),
                                                    errorBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme.of(context).error,
                                                        width: 0.5,
                                                      ),
                                                      borderRadius: BorderRadius.circular(2.0),
                                                    ),
                                                    focusedErrorBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme.of(context).error,
                                                        width: 0.5,
                                                      ),
                                                      borderRadius: BorderRadius.circular(2.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                      ),
                                                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                  validator: _model.adressTextControllerValidator.asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(-1.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                            child: SizedBox(
                                              width: 200.0,
                                              child: TextFormField(
                                                controller: _model.textController4,
                                                focusNode: _model.textFieldFocusNode3,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle: FlutterFlowTheme.of(context).labelSmall.override(
                                                        fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                        lineHeight: 3.0,
                                                      ),
                                                  hintText: 'LOCALITY',
                                                  hintStyle: FlutterFlowTheme.of(context).labelSmall.override(
                                                        fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                        color: const Color(0xA257636C),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                      ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  errorBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).error,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  focusedErrorBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).error,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  filled: true,
                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                ),
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                    ),
                                                cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                validator: _model.textController4Validator.asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
                                            child: SizedBox(
                                              width: 200.0,
                                              child: TextFormField(
                                                controller: _model.cityTextController,
                                                focusNode: _model.cityFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle: FlutterFlowTheme.of(context).labelSmall.override(
                                                        fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                        lineHeight: 3.0,
                                                      ),
                                                  hintText: 'TOWN / CITY',
                                                  hintStyle: FlutterFlowTheme.of(context).labelSmall.override(
                                                        fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                        color: const Color(0xA257636C),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                      ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  errorBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).error,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  focusedErrorBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).error,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  filled: true,
                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                ),
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                    ),
                                                cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                validator: _model.cityTextControllerValidator.asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                            child: SizedBox(
                                              width: 250.0,
                                              child: TextFormField(
                                                controller: _model.pincodeTextController,
                                                focusNode: _model.pincodeFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle: FlutterFlowTheme.of(context).labelSmall.override(
                                                        fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                        lineHeight: 3.0,
                                                      ),
                                                  hintText: 'PINCODE',
                                                  hintStyle: FlutterFlowTheme.of(context).labelSmall.override(
                                                        fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                        color: const Color(0xA257636C),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                      ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  errorBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).error,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  focusedErrorBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme.of(context).error,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius: BorderRadius.circular(2.0),
                                                  ),
                                                  filled: true,
                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                ),
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                    ),
                                                cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                validator: _model.pincodeTextControllerValidator.asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Align(
                                              alignment: const AlignmentDirectional(1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                child: FlutterFlowDropDown<String>(
                                                  controller: _model.dropDownValueController2 ??= FormFieldController<String>(
                                                    _model.dropDownValue2 ??= 'RAJASTHAN',
                                                  ),
                                                  options: const [
                                                    'RAJASTHAN',
                                                    'MAHARASHTRA',
                                                    'BIHAR',
                                                    'CHHATTISGARH',
                                                    'KARNATAKA',
                                                    'PUNJAB',
                                                    'MIZORAM',
                                                    'WEST BENGAL',
                                                    'ARUNACHAL PRADESH',
                                                    'ASSAM',
                                                    'MANIPUR',
                                                    'GUJRAT',
                                                    'GOA',
                                                    'HARYANA',
                                                    'HIMACHAL PRADESH',
                                                    'KERALA',
                                                    'MADHYA PRADHESH',
                                                    'NAGALAND',
                                                    'TAMIL NADU',
                                                    'JHARKHAND',
                                                    'ANDHRA PRADESH',
                                                    'DELHI',
                                                    'UTTAR PRADESH',
                                                    'TELANGANA',
                                                    'ODISHA',
                                                    'MEGHALAYA',
                                                    'SIKKIM',
                                                    'UTTARAKHAND',
                                                    'TRIPURA',
                                                    'J&K'
                                                  ],
                                                  onChanged: (val) => safeSetState(() => _model.dropDownValue2 = val),
                                                  width: 119.0,
                                                  height: 40.0,
                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                        fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                      ),
                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                      ),
                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                        color: const Color(0xA857636C),
                                                        fontSize: 11.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                      ),
                                                  hintText: 'STATE',
                                                  searchHintText: 'STATE',
                                                  icon: Icon(
                                                    Icons.place_outlined,
                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                    size: 20.0,
                                                  ),
                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                  elevation: 1.0,
                                                  borderColor: FlutterFlowTheme.of(context).secondaryText,
                                                  borderWidth: 0.5,
                                                  borderRadius: 2.0,
                                                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: true,
                                                  isMultiSelect: false,
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
                            ),
                            Container(
                              width: double.infinity,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'PAYMENT METHOD',
                                    style: FlutterFlowTheme.of(context).labelSmall.override(
                                          fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                          color: const Color(0xCC57636C),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 5.0,
                                      color: Color(0x44111417),
                                      offset: Offset(
                                        0.0,
                                        2.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.coins,
                                                color: FlutterFlowTheme.of(context).primaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  child: Theme(
                                                    data: ThemeData(
                                                      checkboxTheme: CheckboxThemeData(
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(25),
                                                        ),
                                                      ),
                                                      unselectedWidgetColor: const Color(0xFF95A1AC),
                                                    ),
                                                    child: CheckboxListTile(
                                                      value: _model.checkboxListTileValue ??= false,
                                                      onChanged: (newValue) async {
                                                        safeSetState(() => _model.checkboxListTileValue = newValue!);
                                                      },
                                                      title: Text(
                                                        'CASH ON DELIVERY',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                              fontSize: 12.0,
                                                              letterSpacing: 0.0,
                                                              useGoogleFonts:
                                                                  GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            ),
                                                      ),
                                                      tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                      activeColor: FlutterFlowTheme.of(context).primaryText,
                                                      dense: true,
                                                      controlAffinity: ListTileControlAffinity.trailing,
                                                    ),
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
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                              child: Container(
                                width: 385.0,
                                height: 180.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              void handlePaymentErrorResponse(PaymentFailureResponse response) {
                                                showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        title: const Text('Payment Failed'),
                                                        content: Text('Code: ${response.code}\n'
                                                            'Description: ${response.message}\n'
                                                            'Metadata: ${response.error.toString()}'),
                                                      );
                                                    });
                                              }

                                              void handlePaymentSuccessResponse(PaymentSuccessResponse response) async {

                                                await Orders2Record.collection.doc().set({
                                                  ...createOrders2RecordData(
                                                    time: getCurrentTimestamp,
                                                    status: 'PLACED',
                                                    pincode: double.tryParse(_model.pincodeTextController.text),
                                                    mobileno: double.tryParse(_model.textController2.text),
                                                    address: _model.adressTextController.text,
                                                    orderid: random_data.randomInteger(1000, 10000),
                                                    ordertotal: FFAppState().cartsum,
                                                    off: FFAppState().cartsum,
                                                    promo: widget.promo,
                                                    name: _model.textController1.text,
                                                    locality: _model.textController4.text,
                                                    state: _model.dropDownValue2,
                                                    city: _model.cityTextController.text,
                                                    prefix: _model.dropDownValue1,
                                                    userRef: currentUserReference,
                                                    brand: '',
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'ordereditems': getCartitemtypeListFirestoreData(
                                                        FFAppState().cart,
                                                      ),
                                                    },
                                                  ),
                                                });
                                                FFAppState().cart.clear();
                                                showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        title: const Text('Your Order has been placed'),
                                                        content: Text('Payment ID: ${response.paymentId}'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () {
                                                              context.pushNamed('_initialize');
                                                            },
                                                            child: const Text('OK'),
                                                          ),
                                                        ],
                                                      );
                                                    });
                                                await (widget.item2!.elementAtOrNull(0))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                      'sizem': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                        size: 'S',
                                                      )) !=
                                                          null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizes': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                        size: 'S',
                                                      )) !=
                                                          null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizel': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                        size: 'L',
                                                      )) !=
                                                          null
                                                          ? 1.0
                                                          : 0.0)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(1))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'sizem': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                        size: 'M',
                                                      )) !=
                                                          null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizes': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                        size: 'S',
                                                      )) !=
                                                          null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizel': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                        size: 'L',
                                                      )) !=
                                                          null
                                                          ? 1.0
                                                          : 0.0)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(2))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                      'sizes': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                        size: 'S',
                                                      )) !=
                                                          null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizem': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                        size: 'M',
                                                      )) !=
                                                          null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizel': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                        size: 'L',
                                                      )) !=
                                                          null
                                                          ? 1.0
                                                          : 0.0)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(3))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(4))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(5))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(6))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(7))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(8))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');

                                              }

                                              void handleExternalWalletSelected(ExternalWalletResponse response) {
                                                showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        title: const Text('External Wallet'),
                                                        content: Text('Selected Wallet: ${response.walletName}'),
                                                      );
                                                    });
                                              }

                                              void showAlertDialog(BuildContext context, String title, String message) {
                                                showDialog(
                                                  context: context,
                                                  builder: (BuildContext context) {
                                                    return AlertDialog(
                                                      title: Text(title),
                                                      content: Text(message),
                                                      actions: [
                                                        ElevatedButton(
                                                          onPressed: Navigator.of(context).pop,
                                                          child: const Text('Continue'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }

                                              logFirebaseEvent('CHECKOUT_PAGE_PAY_NOW_BTN_ON_TAP');

                                              // Debug print the values for verification
                                              debugPrint('Mobile: ${_model.textController2.text}');
                                              debugPrint('Address: ${_model.adressTextController.text}');
                                              debugPrint('Checkbox Value: ${_model.checkboxListTileValue.toString()}');

                                              // Ensure the values are not empty and checkbox is checked
                                              if (_model.textController2.text.trim().isNotEmpty &&
                                                  _model.adressTextController.text.trim().isNotEmpty &&
                                                  (_model.checkboxListTileValue == false)) {
                                                Razorpay razorpay = Razorpay();
                                                var options = {
                                                  'key': 'rzp_test_R3vTwa7lyp8uO1',
                                                  'amount': FFAppState().cartsum * 100,
                                                  'name': 'Croscrow.',
                                                  'description': 'Payment for the items',
                                                  'retry': {'enabled': false, 'max_count': 1},
                                                  'send_sms_hash': true,
                                                  'prefill': {'contact': _model.textController2.text, 'email': ''},
                                                  'external': {
                                                    'wallets': ['paytm']
                                                  }
                                                };
                                                razorpay.on(
                                                  Razorpay.EVENT_PAYMENT_ERROR,
                                                  handlePaymentErrorResponse,
                                                );
                                                razorpay.on(
                                                  Razorpay.EVENT_PAYMENT_SUCCESS,
                                                  handlePaymentSuccessResponse,
                                                );
                                                razorpay.on(
                                                  Razorpay.EVENT_EXTERNAL_WALLET,
                                                  handleExternalWalletSelected,
                                                );
                                                razorpay.open(options);

                                                logFirebaseEvent('Button_show_snack_bar');

                                                logFirebaseEvent('Button_backend_call');
                                              } else if (_model.checkboxListTileValue == true) {
                                                logFirebaseEvent('Button_show_snack_bar');
                                                //show dialog
                                                showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        title: const Text('Your Order is Placed'),
                                                        content: Text('Your order will be delivered soon'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () {
                                                              context.goNamed('_initialize');
                                                            },
                                                            child: const Text('OK'),
                                                          ),
                                                        ],
                                                      );
                                                    });

                                                logFirebaseEvent('Button_backend_call');
                                                await Orders2Record.collection.doc().set({
                                                  ...createOrders2RecordData(
                                                    time: getCurrentTimestamp,
                                                    status: 'PLACED',
                                                    pincode: double.tryParse(_model.pincodeTextController.text),
                                                    mobileno: double.tryParse(_model.textController2.text),
                                                    address: _model.adressTextController.text,
                                                    orderid: random_data.randomInteger(1000, 10000),
                                                    ordertotal: FFAppState().cartsum,
                                                    off: FFAppState().cartsum,
                                                    promo: widget.promo,
                                                    name: _model.textController1.text,
                                                    locality: _model.textController4.text,
                                                    state: _model.dropDownValue2,
                                                    city: _model.cityTextController.text,
                                                    prefix: _model.dropDownValue1,
                                                    userRef: currentUserReference,
                                                    brand: '',
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'ordereditems': getCartitemtypeListFirestoreData(
                                                        FFAppState().cart,
                                                      ),
                                                    },
                                                  ),
                                                });
                                                await (widget.item2!.elementAtOrNull(0))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                      'sizem': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                                    size: 'S',
                                                                  )) !=
                                                              null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizes': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                                    size: 'S',
                                                                  )) !=
                                                              null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizel': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                                    size: 'L',
                                                                  )) !=
                                                              null
                                                          ? 1.0
                                                          : 0.0)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(1))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'sizem': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                                    size: 'M',
                                                                  )) !=
                                                              null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizes': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                                    size: 'S',
                                                                  )) !=
                                                              null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizel': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                                    size: 'L',
                                                                  )) !=
                                                              null
                                                          ? 1.0
                                                          : 0.0)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(2))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                      'sizes': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                                    size: 'S',
                                                                  )) !=
                                                              null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizem': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                                    size: 'M',
                                                                  )) !=
                                                              null
                                                          ? 1.0
                                                          : 0.0)),
                                                      'sizel': FieldValue.increment(-(FFAppState().cart.contains(CartitemtypeStruct(
                                                                    size: 'L',
                                                                  )) !=
                                                              null
                                                          ? 1.0
                                                          : 0.0)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(3))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(4))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(5))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(6))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(7))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent('Button_backend_call');
                                                await (widget.item2!.elementAtOrNull(8))!.update({
                                                  ...mapToFirestore(
                                                    {
                                                      'stock': FieldValue.increment(-(1)),
                                                    },
                                                  ),
                                                });

                                                logFirebaseEvent('Button_backend_call');
                                              } else {
                                                logFirebaseEvent('Button_show_snack_bar');
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'FILL FIELDS FIRST',
                                                      style: TextStyle(
                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                        fontSize: 10.0,
                                                      ),
                                                    ),
                                                    duration: const Duration(milliseconds: 7400),
                                                    backgroundColor: FlutterFlowTheme.of(context).warning,
                                                  ),
                                                );
                                              }
                                            },
                                            text: 'PAY NOW',
                                            options: FFButtonOptions(
                                              width: 270.0,
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: FlutterFlowTheme.of(context).primaryText,
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                  ),
                                              elevation: 2.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(12.0),
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
