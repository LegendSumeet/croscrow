import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shippingpolicy_model.dart';
export 'shippingpolicy_model.dart';

class ShippingpolicyWidget extends StatefulWidget {
  const ShippingpolicyWidget({super.key});

  @override
  State<ShippingpolicyWidget> createState() => _ShippingpolicyWidgetState();
}

class _ShippingpolicyWidgetState extends State<ShippingpolicyWidget> {
  late ShippingpolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShippingpolicyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'shippingpolicy'});
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
              logFirebaseEvent('SHIPPINGPOLICY_PAGE_BUTTON_BTN_ON_TAP');
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
            'SHIPPING POLICY',
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
                          '\nShipping Policy  \n\nAt Croscrow, we aim to provide a seamless shopping experience by connecting you directly with the brands you love. Please note that shipping policies, including costs, methods, and delivery times, are determined by the brands you order from.  \n\nShipping Methods and Costs  \nShipping options, costs, and methods are set by the individual brands.  \nThe specific details of the shipping policy can be found on the product page under the \"Brand Policy\" section.  \n\nDelivery Times  \nEstimated delivery times vary by brand and depend on their shipping process.  \nPlease check the \"Brand Policy\" section or the confirmation email for an estimated timeline.  \n\nGenrally it takes 3 - 10 days depends on your location.\n\nOrder Tracking  \nTracking information, if available, will be provided directly by the brand.  \nYou will receive updates about your shipment through the email or contact information provided during checkout.  \n\nInternational Shipping  \nAvailability of international shipping depends on the brand.  \nAdditional customs duties, taxes, or fees may apply for international orders. These charges are determined by local authorities and are the responsibility of the customer.  \n\nDelays and Issues  \nWhile we strive for timely deliveries, delays may occasionally occur due to unforeseen circumstances.  \nIf there are any issues with your shipment, please contact the brand directly using the details provided in the \"Brand Policy\" section.  \n\nCroscrow’s Role  \nCroscrow acts as a platform to facilitate your purchase and connect you with brands.  \nWe do not handle shipping directly but are here to support you if you need assistance in reaching out to the brand.  \n\nContact Us  \nIf you need further help with your order or have questions about shipping, feel free to reach out to our support team',
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
