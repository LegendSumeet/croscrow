import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'newdrops_copy_model.dart';
export 'newdrops_copy_model.dart';

class NewdropsCopyWidget extends StatefulWidget {
  const NewdropsCopyWidget({super.key});

  @override
  State<NewdropsCopyWidget> createState() => _NewdropsCopyWidgetState();
}

class _NewdropsCopyWidgetState extends State<NewdropsCopyWidget> {
  late NewdropsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewdropsCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'newdropsCopy'});
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
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Untitled_design_(44).png',
                height: 80.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          actions: const [],
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
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 400.0,
                                    height: 400.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: StreamBuilder<List<NewdropsRecord>>(
                                      stream: queryNewdropsRecord(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 20.0,
                                              height: 20.0,
                                              child: SpinKitWave(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 20.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<NewdropsRecord>
                                            carouselNewdropsRecordList =
                                            snapshot.data!;

                                        return SizedBox(
                                          width: double.infinity,
                                          height: 292.0,
                                          child: CarouselSlider.builder(
                                            itemCount:
                                                carouselNewdropsRecordList
                                                    .length,
                                            itemBuilder:
                                                (context, carouselIndex, _) {
                                              final carouselNewdropsRecord =
                                                  carouselNewdropsRecordList[
                                                      carouselIndex];
                                              return ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  carouselNewdropsRecord.image,
                                                  width: 469.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              );
                                            },
                                            carouselController:
                                                _model.carouselController1 ??=
                                                    CarouselSliderController(),
                                            options: CarouselOptions(
                                              initialPage: max(
                                                  0,
                                                  min(
                                                      2,
                                                      carouselNewdropsRecordList
                                                              .length -
                                                          1)),
                                              viewportFraction: 0.9,
                                              disableCenter: true,
                                              enlargeCenterPage: true,
                                              enlargeFactor: 0.25,
                                              enableInfiniteScroll: true,
                                              scrollDirection: Axis.horizontal,
                                              autoPlay: true,
                                              autoPlayAnimationDuration:
                                                  const Duration(milliseconds: 800),
                                              autoPlayInterval: const Duration(
                                                  milliseconds: (800 + 4000)),
                                              autoPlayCurve: Curves.linear,
                                              pauseAutoPlayInFiniteScroll: true,
                                              onPageChanged: (index, _) =>
                                                  _model.carouselCurrentIndex1 =
                                                      index,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'NEW LAUNCHES',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Roboto'),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            StreamBuilder<List<NewdroprowRecord>>(
                              stream: queryNewdroprowRecord(),
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
                                List<NewdroprowRecord>
                                    carouselNewdroprowRecordList =
                                    snapshot.data!;

                                return SizedBox(
                                  width: 380.0,
                                  height: 190.0,
                                  child: CarouselSlider.builder(
                                    itemCount:
                                        carouselNewdroprowRecordList.length,
                                    itemBuilder: (context, carouselIndex, _) {
                                      final carouselNewdroprowRecord =
                                          carouselNewdroprowRecordList[
                                              carouselIndex];
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          carouselNewdroprowRecord.image,
                                          width: 380.0,
                                          height: 190.0,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    },
                                    carouselController:
                                        _model.carouselController2 ??=
                                            CarouselSliderController(),
                                    options: CarouselOptions(
                                      initialPage: max(
                                          0,
                                          min(
                                              1,
                                              carouselNewdroprowRecordList
                                                      .length -
                                                  1)),
                                      viewportFraction: 1.0,
                                      disableCenter: true,
                                      enlargeCenterPage: true,
                                      enlargeFactor: 0.25,
                                      enableInfiniteScroll: true,
                                      scrollDirection: Axis.horizontal,
                                      autoPlay: true,
                                      autoPlayAnimationDuration:
                                          const Duration(milliseconds: 800),
                                      autoPlayInterval:
                                          const Duration(milliseconds: (800 + 4000)),
                                      autoPlayCurve: Curves.linear,
                                      pauseAutoPlayInFiniteScroll: true,
                                      onPageChanged: (index, _) =>
                                          _model.carouselCurrentIndex2 = index,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'COMING SOON',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Roboto'),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            StreamBuilder<List<ComingsoonRecord>>(
                              stream: queryComingsoonRecord(),
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
                                List<ComingsoonRecord>
                                    carouselComingsoonRecordList =
                                    snapshot.data!;

                                return SizedBox(
                                  width: double.infinity,
                                  height: 400.0,
                                  child: CarouselSlider.builder(
                                    itemCount:
                                        carouselComingsoonRecordList.length,
                                    itemBuilder: (context, carouselIndex, _) {
                                      final carouselComingsoonRecord =
                                          carouselComingsoonRecordList[
                                              carouselIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              carouselComingsoonRecord.image,
                                              width: 300.0,
                                              height: 364.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Container(
                                            width: 300.0,
                                            height: 33.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 1.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                            carouselComingsoonRecord
                                                                .brand,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                            carouselComingsoonRecord
                                                                .name,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                      color: FlutterFlowTheme
                                                              .of(context)
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
                                                              () => FFAppState()
                                                                      .gav
                                                                      .contains(
                                                                          carouselComingsoonRecord
                                                                              .reference)
                                                                  ? FFAppState()
                                                                      .removeFromGav(
                                                                          carouselComingsoonRecord
                                                                              .reference)
                                                                  : FFAppState()
                                                                      .addToGav(
                                                                          carouselComingsoonRecord
                                                                              .reference),
                                                            );
                                                          },
                                                          value: FFAppState()
                                                              .gav
                                                              .contains(
                                                                  carouselComingsoonRecord
                                                                      .reference),
                                                          onIcon: const Icon(
                                                            Icons
                                                                .favorite_sharp,
                                                            color: Color(
                                                                0xFFF81D2A),
                                                            size: 25.0,
                                                          ),
                                                          offIcon: Icon(
                                                            Icons
                                                                .favorite_border,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                    carouselController:
                                        _model.carouselController3 ??=
                                            CarouselSliderController(),
                                    options: CarouselOptions(
                                      initialPage: max(
                                          0,
                                          min(
                                              1,
                                              carouselComingsoonRecordList
                                                      .length -
                                                  1)),
                                      viewportFraction: 0.9,
                                      disableCenter: true,
                                      enlargeCenterPage: true,
                                      enlargeFactor: 0.2,
                                      enableInfiniteScroll: true,
                                      scrollDirection: Axis.horizontal,
                                      autoPlay: true,
                                      autoPlayAnimationDuration:
                                          const Duration(milliseconds: 800),
                                      autoPlayInterval:
                                          const Duration(milliseconds: (800 + 4000)),
                                      autoPlayCurve: Curves.linear,
                                      pauseAutoPlayInFiniteScroll: true,
                                      onPageChanged: (index, _) =>
                                          _model.carouselCurrentIndex3 = index,
                                    ),
                                  ),
                                );
                              },
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
