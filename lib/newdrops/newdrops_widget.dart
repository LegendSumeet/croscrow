import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'newdrops_model.dart';
export 'newdrops_model.dart';

class NewdropsWidget extends StatefulWidget {
  const NewdropsWidget({super.key});

  @override
  State<NewdropsWidget> createState() => _NewdropsWidgetState();
}

class _NewdropsWidgetState extends State<NewdropsWidget> {
  late NewdropsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewdropsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'newdrops'});
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
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/CROSCROW_(26).png',
              width: double.infinity,
              height: 80.0,
              fit: BoxFit.contain,
              alignment: const Alignment(0.0, 0.0),
            ),
          ),
          actions: const [],
          centerTitle: false,
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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 10.0, 0.0, 0.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 380.0,
                                      height: 190.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 0.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Untitled_design_(2)_(2).png',
                                              width: 380.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 380.0,
                                      height: 190.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 0.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Untitled_design_(6).png',
                                              width: 380.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 380.0,
                                      height: 190.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 0.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Untitled_design_(3).png',
                                              width: 380.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 380.0,
                                      height: 190.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 0.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Untitled_design_(9).png',
                                              width: 380.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 380.0,
                                      height: 190.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 0.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Untitled_design_(4).png',
                                              width: 380.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Container(
                                        width: 380.0,
                                        height: 190.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 0.0,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Untitled_design_(5).png',
                                                width: 380.0,
                                                height: 190.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 15.0)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 180.0,
                              child: CarouselSlider(
                                items: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/IMG_1177.jpg',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/IMG_1194.jpg',
                                      width: 323.0,
                                      height: 200.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/IMG_1178.jpg',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/IMG_1193.jpg',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                                carouselController:
                                    _model.carouselController2 ??=
                                        CarouselSliderController(),
                                options: CarouselOptions(
                                  initialPage: 1,
                                  viewportFraction: 0.5,
                                  disableCenter: true,
                                  enlargeCenterPage: true,
                                  enlargeFactor: 0.25,
                                  enableInfiniteScroll: true,
                                  scrollDirection: Axis.horizontal,
                                  autoPlay: false,
                                  onPageChanged: (index, _) =>
                                      _model.carouselCurrentIndex2 = index,
                                ),
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
                                      'TRENDING',
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
                            StreamBuilder<List<ItemsRecord>>(
                              stream: queryItemsRecord(),
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
                                List<ItemsRecord> carouselItemsRecordList =
                                    snapshot.data!;

                                return SizedBox(
                                  width: double.infinity,
                                  height: 400.0,
                                  child: CarouselSlider.builder(
                                    itemCount: carouselItemsRecordList.length,
                                    itemBuilder: (context, carouselIndex, _) {
                                      final carouselItemsRecord =
                                          carouselItemsRecordList[
                                              carouselIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              carouselItemsRecord
                                                  .images.firstOrNull!,
                                              width: 300.0,
                                              height: 364.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            width: 300.0,
                                            height: 30.0,
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
                                                            carouselItemsRecord
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
                                                            carouselItemsRecord
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
                                                        Flexible(
                                                          child: ToggleIcon(
                                                            onPressed:
                                                                () async {
                                                              safeSetState(
                                                                () => FFAppState()
                                                                        .gav
                                                                        .contains(carouselItemsRecord
                                                                            .reference)
                                                                    ? FFAppState().removeFromGav(
                                                                        carouselItemsRecord
                                                                            .reference)
                                                                    : FFAppState()
                                                                        .addToGav(
                                                                            carouselItemsRecord.reference),
                                                              );
                                                            },
                                                            value: FFAppState()
                                                                .gav
                                                                .contains(
                                                                    carouselItemsRecord
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
                                                        ),
                                                        InkWell(
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
                                                                'NEWDROPS_PAGE_Icon_xwxrychh_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Icon_update_app_state');
                                                            FFAppState()
                                                                    .cartsum =
                                                                FFAppState()
                                                                        .cartsum +
                                                                    carouselItemsRecord
                                                                        .price;
                                                            FFAppState().addToCart(
                                                                CartitemtypeStruct(
                                                              size: 's',
                                                              menuitemref:
                                                                  carouselItemsRecord
                                                                      .reference,
                                                              quantity: 1,
                                                            ));
                                                            safeSetState(() {});
                                                            logFirebaseEvent(
                                                                'Icon_backend_call');

                                                            await carouselItemsRecord
                                                                .reference
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'stock': FieldValue
                                                                      .increment(
                                                                          -(1)),
                                                                },
                                                              ),
                                                            });
                                                            logFirebaseEvent(
                                                                'Icon_show_snack_bar');
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Added to Cart',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                duration: const Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                              ),
                                                            );
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .shopping_bag_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
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
                                              carouselItemsRecordList.length -
                                                  1)),
                                      viewportFraction: 0.9,
                                      disableCenter: true,
                                      enlargeCenterPage: true,
                                      enlargeFactor: 0.2,
                                      enableInfiniteScroll: true,
                                      scrollDirection: Axis.horizontal,
                                      autoPlay: false,
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
