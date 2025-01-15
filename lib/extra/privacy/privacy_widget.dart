import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacy_model.dart';
export 'privacy_model.dart';

class PrivacyWidget extends StatefulWidget {
  const PrivacyWidget({super.key});

  @override
  State<PrivacyWidget> createState() => _PrivacyWidgetState();
}

class _PrivacyWidgetState extends State<PrivacyWidget> {
  late PrivacyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'privacy'});
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
              logFirebaseEvent('PRIVACY_PAGE_BUTTON_BTN_ON_TAP');
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
            'PRIVACY POLICY',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: const [],
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
                          'Privacy Policy\n\nCroscrow  values your privacy and is committed to protecting your personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard your information when you visit our website, use our marketplace platform, or interact with us in other ways. By using our services, you agree to the practices described in this policy.\n\n1. Information We Collect\n\nWe may collect the following types of information:\n\n1.1 Personal Information:\n\nName, email address, phone number, billing address, and shipping address.\n\nPayment information (processed securely through third-party payment gateways).\n\n1.2 Account Information:\n\nUsername and password when you register an account.\n\n1.3 Transaction Information:\n\nDetails of purchases made through our platform, including items purchased, price, and date.\n\n1.4 Technical Information:\n\nIP address, browser type, operating system, and device information.\n\nCookies and usage data to enhance your browsing experience.\n\n1.5 Communications:\n\nAny information you provide when contacting us via email, chat, or customer support.\n\n2. How We Use Your Information\n\nWe use the information we collect for the following purposes:\n\n2.1 Providing Services:\n\nTo facilitate transactions, process payments, and deliver products.\n\n2.2 Improving Our Platform:\n\nTo analyze usage trends and improve website functionality.\n\n2.3 Personalization:\n\nTo tailor recommendations, advertisements, and content to your preferences.\n\n2.4 Communication:\n\nTo send order updates, promotional materials, and respond to inquiries.\n\n2.5 Legal Compliance:\n\nTo comply with applicable laws, regulations, and enforce our Terms of Service.\n\n3. Sharing Your Information\n\nWe do not sell or rent your personal information. However, we may share your information with:\n\n3.1 Service Providers:\n\nThird-party vendors for payment processing, order fulfillment, and marketing.\n\n3.2 Brand Partners:\n\nWhen necessary to fulfill orders, we share relevant details with the brands whose products you purchase.\n\n3.3 Legal Obligations:\n\nAuthorities if required to comply with legal obligations or protect our rights.\n\n3.4 Business Transfers:\n\nIn the event of a merger, sale, or acquisition, your information may be transferred to the new entity.\n\n4. Your Choices\n\n4.1 Account Management:\n\nYou can update or delete your account information by logging into your account.\n\n4.2 Marketing Communications:\n\nYou can opt-out of promotional emails by following the unsubscribe instructions provided.\n\n4.3 Cookies:\n\nMost web browsers allow you to manage your cookie preferences. Note that disabling cookies may affect website functionality.\n\n5. Data Security\n\nWe implement industry-standard security measures to protect your information. However, no method of transmission or storage is 100% secure. Please notify us immediately if you suspect any unauthorized use of your account.\n\n6. Third-Party Links\n\nOur website may contain links to third-party websites. We are not responsible for the privacy practices or content of these sites. Please review their privacy policies before sharing any information.\n\n7. Children\'s Privacy\n\nOur platform is not intended for children under the age of 13. We do not knowingly collect personal information from children. If you believe we have inadvertently collected such information, please contact us to delete it.\n\n8. Changes to This Privacy Policy\n\nWe may update this Privacy Policy from time to time. The updated version will be posted on our website with the effective date. Continued use of our platform constitutes acceptance of the revised policy.\n\n9. Contact Us\n\nIf you have any questions or concerns about this Privacy Policy, please contact us:\n\nEmail: support@croscrow.comPhone:  +91 6375668971\n\nThank you for trusting Croscrow with your personal information. Your privacy is important to us.\n\n',
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
