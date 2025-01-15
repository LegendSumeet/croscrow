import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'returnpolicycancellation_model.dart';
export 'returnpolicycancellation_model.dart';

class ReturnpolicycancellationWidget extends StatefulWidget {
  const ReturnpolicycancellationWidget({super.key});

  @override
  State<ReturnpolicycancellationWidget> createState() =>
      _ReturnpolicycancellationWidgetState();
}

class _ReturnpolicycancellationWidgetState
    extends State<ReturnpolicycancellationWidget> {
  late ReturnpolicycancellationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReturnpolicycancellationModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'returnpolicycancellation'});
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FFButtonWidget(
            onPressed: () async {
              logFirebaseEvent('RETURNPOLICYCANCELLATION_BUTTON_BTN_ON_T');
              logFirebaseEvent('Button_navigate_back');
              context.safePop();
            },
            text: 'Button',
            icon: const Icon(
              Icons.arrow_left_sharp,
              size: 24.0,
            ),
            options: FFButtonOptions(
              height: 40.0,
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).secondaryBackground,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleSmallFamily),
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          title: Text(
            'RETURN AND CANCELLATION POLICY',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Text(
                          '\n\nReturn and Cancellation Policy  \n\nAt Croscrow, we aim to provide a seamless shopping experience by connecting you directly with the brands you love. Please note that our return and cancellation policies align with the policies of the brands you order from.  \n\nReturns  \n- Returns are governed by the individual policies of the brand you purchased from.  \n- To initiate a return, please visit the product page, where you can access the brand\'s specific return policy under the \"Brand Policy\" section.  \n- Ensure that your request meets the brand’s eligibility criteria, such as timeframe and condition of the product.  \n- The return process, including shipping and refunds, will be handled directly by the brand.  \n\nrefund will be proccessed within 3 - 10 days\n\nCancellations  \n- Cancellation terms and conditions are determined by the brand.  \n- If you wish to cancel an order, check the brand\'s policy through the \"Brand Policy\" section on the product page.  \n- Please act quickly, as some brands may not accept cancellations once the order has been processed or shipped.  \n\nHow to Proceed  \n1. Visit the product page and navigate to the \"Brand Policy\" section for specific details.  \n2. Contact the brand directly using the provided contact information for assistance with returns or cancellations.  \n\nOur Role  \nCroscrow serves as a platform to facilitate your purchase. While we do not handle returns or cancellations, we are here to support you by providing guidance and connecting you with the brand.  \n\nFor further assistance, feel free to reach out to our support team.  \n',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
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
    );
  }
}
