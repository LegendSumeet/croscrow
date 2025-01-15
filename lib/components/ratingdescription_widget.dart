import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ratingdescription_model.dart';
export 'ratingdescription_model.dart';

class RatingdescriptionWidget extends StatefulWidget {
  const RatingdescriptionWidget({super.key});

  @override
  State<RatingdescriptionWidget> createState() =>
      _RatingdescriptionWidgetState();
}

class _RatingdescriptionWidgetState extends State<RatingdescriptionWidget> {
  late RatingdescriptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingdescriptionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Material(
            color: Colors.transparent,
            elevation: 1.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(0.0),
              ),
            ),
            child: Container(
              width: 250.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 2.0),
                child: Text(
                  'This rating reflects the fabric quality, print quality, and fitting of the products offered by this brand.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        fontSize: 10.5,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
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
            logFirebaseEvent('RATINGDESCRIPTION_Container_ff8vlrlq_ON_');
            logFirebaseEvent('Container_close_dialog_drawer_etc');
            Navigator.pop(context);
          },
          child: Container(
            width: 20.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(8.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Icon(
                Icons.close,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 17.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
