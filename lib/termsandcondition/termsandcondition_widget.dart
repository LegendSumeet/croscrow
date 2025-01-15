import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'termsandcondition_model.dart';
export 'termsandcondition_model.dart';

class TermsandconditionWidget extends StatefulWidget {
  const TermsandconditionWidget({super.key});

  @override
  State<TermsandconditionWidget> createState() =>
      _TermsandconditionWidgetState();
}

class _TermsandconditionWidgetState extends State<TermsandconditionWidget> {
  late TermsandconditionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsandconditionModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'termsandcondition'});
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
              logFirebaseEvent('TERMSANDCONDITION_PAGE_BUTTON_BTN_ON_TAP');
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
            'TERMS AND CONDITIONS',
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
                          '\nTerms and Conditions \n\nWelcome to Croscrow. By accessing or using our platform, you agree to comply with and be bound by the following terms and conditions. Please read them carefully. If you do not agree with any part of these terms, you must not use our services.  \n\n1. About Croscrow\nCroscrow is a marketplace platform that connects customers directly with brands. The products available on our platform are sold and fulfilled by the respective brands.  \n\n2. Account Registratio\n- You must be at least 18 years old to create an account and use our services.  \n- You are responsible for maintaining the confidentiality of your account credentials.  \n- Croscrow reserves the right to suspend or terminate accounts that violate these terms.  \n\n3. Use of the Platform\n- You may not use the platform for any unlawful or unauthorized purpose.  \n- You agree not to engage in activities that disrupt or harm the platform or other users.  \n\n4. Orders and Payments\n- All orders are placed directly with the respective brands through the Croscrow platform.  \n- Payments are processed securely, and Croscrow acts as an intermediary to facilitate transactions.  \n- Pricing, taxes, and shipping fees are determined by the brands.  \n\n5. Shipping and Delivery  \n- Shipping and delivery are managed by the brands.  \n- Estimated delivery times are provided by the brands and may vary.  \n- Croscrow is not liable for delays or issues with delivery.  \n\n6. Returns and Cancellations\n- Returns and cancellations are governed by the policies of the brands from which you purchased.  \n- Refer to the \"Brand Policy\" section on the product page for specific details.  \n- Croscrow does not directly handle returns, refunds, or cancellations.  \n\n7. Intellectual Property\n- All content on the platform, including text, graphics, logos, and images, is the property of Croscrow or its content providers.  \n- You may not reproduce, distribute, or use the content without prior written permission.  \n\n8. Limitation of Liability\n- Croscrow acts as a facilitator and is not responsible for the quality, safety, or legality of the products sold by brands.  \n- We are not liable for any direct, indirect, incidental, or consequential damages arising from the use of our platform.  \n\n9. Privacy\n- Your use of the platform is subject to our Privacy Policy, which outlines how we collect, use, and protect your information.  \n\n10. Changes to Terms\n- Croscrow reserves the right to update or modify these terms at any time without prior notice.  \n- Continued use of the platform after changes are made constitutes your acceptance of the new terms.  \n\n11. Governing Law  \n- These terms are governed by the laws of [Your Jurisdiction].  \n- Any disputes arising from the use of the platform will be subject to the exclusive jurisdiction of the courts in [Your Jurisdiction].  \n\n12. Contact Us\nFor questions or concerns about these terms, please contact us at support \n\n',
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
