import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sizecomponent_model.dart';
export 'sizecomponent_model.dart';

class SizecomponentWidget extends StatefulWidget {
  const SizecomponentWidget({
    super.key,
    required this.itemref,
  });

  final DocumentReference? itemref;

  @override
  State<SizecomponentWidget> createState() => _SizecomponentWidgetState();
}

class _SizecomponentWidgetState extends State<SizecomponentWidget> {
  late SizecomponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SizecomponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
      child: SafeArea(
        child: Container(
          width: 350.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 3.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  1.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
            ),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'SIZECOMPONENT_COMP_Image_kf04jl2z_ON_TAP');
                      logFirebaseEvent('Image_expand_image');
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: FlutterFlowExpandedImageView(
                            image: Image.asset(
                              'assets/images/size-chart-for-pants_2048x2048.webp',
                              fit: BoxFit.contain,
                              alignment: const Alignment(0.0, 0.0),
                            ),
                            allowRotation: false,
                            tag: 'imageTag',
                            useHeroAnimation: true,
                          ),
                        ),
                      );
                    },
                    child: Hero(
                      tag: 'imageTag',
                      transitionOnUserGestures: true,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/size-chart-for-pants_2048x2048.webp',
                          fit: BoxFit.contain,
                          alignment: const Alignment(0.0, 0.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(1.0, -1.0),
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderRadius: 8.0,
                  borderWidth: 2.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 20.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('SIZECOMPONENT_COMP_close_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_close_dialog_drawer_etc');
                    Navigator.pop(context);
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
