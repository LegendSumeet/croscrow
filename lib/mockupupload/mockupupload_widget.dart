import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mockupupload_model.dart';
export 'mockupupload_model.dart';

class MockupuploadWidget extends StatefulWidget {
  const MockupuploadWidget({super.key});

  @override
  State<MockupuploadWidget> createState() => _MockupuploadWidgetState();
}

class _MockupuploadWidgetState extends State<MockupuploadWidget> {
  late MockupuploadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MockupuploadModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'MOCKUPUPLOAD'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.85, -0.4),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0x7F0F1113),
                                  icon: const Icon(
                                    Icons.chevron_left_rounded,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'MOCKUPUPLOAD_chevron_left_rounded_ICN_ON');
                                    logFirebaseEvent(
                                        'IconButton_navigate_back');
                                    context.safePop();
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.85, -0.4),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0x7F0F1113),
                                  icon: const Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 392.0,
                          height: 389.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            height: 286.0,
                            child: CarouselSlider(
                              items: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/images/istockphoto-1309772717-612x612.jpg',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/istockphoto-1309772717-612x612.jpg',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/603/600',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/579/600',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                              carouselController: _model.carouselController ??=
                                  CarouselSliderController(),
                              options: CarouselOptions(
                                initialPage: 1,
                                viewportFraction: 0.9,
                                disableCenter: true,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.25,
                                enableInfiniteScroll: true,
                                scrollDirection: Axis.horizontal,
                                autoPlay: false,
                                onPageChanged: (index, _) =>
                                    _model.carouselCurrentIndex = index,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.85, -0.4),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0x7F0F1113),
                                  icon: const Icon(
                                    Icons.chevron_left_rounded,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'MOCKUPUPLOAD_chevron_left_rounded_ICN_ON');
                                    logFirebaseEvent(
                                        'IconButton_navigate_back');
                                    context.safePop();
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.85, -0.4),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0x7F0F1113),
                                  icon: const Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'WANNA BE A DESIGNER',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleLargeFamily),
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 10.0),
                    child: Text(
                      'DESIGN OR UPLOAD YOUR MOCKUPS HERE \nIF IT\'S SEXY ENOUGH WE\'LL GIVE IT A SHOT',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelMediumFamily),
                          ),
                    ),
                  ),
                  Container(
                    width: 356.0,
                    height: 53.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('MOCKUPUPLOAD_PAGE_UPLOAD_BTN_ON_TAP');
                        logFirebaseEvent('Button_upload_media_to_firebase');
                        final selectedMedia =
                            await selectMediaWithSourceBottomSheet(
                          context: context,
                          maxWidth: 200.00,
                          maxHeight: 300.00,
                          allowPhoto: true,
                        );
                        if (selectedMedia != null &&
                            selectedMedia.every((m) =>
                                validateFileFormat(m.storagePath, context))) {
                          safeSetState(() => _model.isDataUploading = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];

                          var downloadUrls = <String>[];
                          try {
                            selectedUploadedFiles = selectedMedia
                                .map((m) => FFUploadedFile(
                                      name: m.storagePath.split('/').last,
                                      bytes: m.bytes,
                                      height: m.dimensions?.height,
                                      width: m.dimensions?.width,
                                      blurHash: m.blurHash,
                                    ))
                                .toList();

                            downloadUrls = (await Future.wait(
                              selectedMedia.map(
                                (m) async =>
                                    await uploadData(m.storagePath, m.bytes),
                              ),
                            ))
                                .where((u) => u != null)
                                .map((u) => u!)
                                .toList();
                          } finally {
                            _model.isDataUploading = false;
                          }
                          if (selectedUploadedFiles.length ==
                                  selectedMedia.length &&
                              downloadUrls.length == selectedMedia.length) {
                            safeSetState(() {
                              _model.uploadedLocalFile =
                                  selectedUploadedFiles.first;
                              _model.uploadedFileUrl = downloadUrls.first;
                            });
                          } else {
                            safeSetState(() {});
                            return;
                          }
                        }
                      },
                      text: 'UPLOAD',
                      options: FFButtonOptions(
                        height: 24.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryText,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: Colors.white,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
                    child: Container(
                      width: 399.0,
                      height: 148.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: StreamBuilder<List<ComingSoonRecord>>(
                        stream: queryComingSoonRecord(),
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
                          List<ComingSoonRecord> rowComingSoonRecordList =
                              snapshot.data!;

                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  rowComingSoonRecordList.length, (rowIndex) {
                                final rowComingSoonRecord =
                                    rowComingSoonRecordList[rowIndex];
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          rowComingSoonRecord.image,
                                          width: 110.0,
                                          height: 213.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }).divide(const SizedBox(width: 10.0)),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
