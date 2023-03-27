import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_wide_dark_payment_model.dart';
export 'button_wide_dark_payment_model.dart';

class ButtonWideDarkPaymentWidget extends StatefulWidget {
  const ButtonWideDarkPaymentWidget({Key? key}) : super(key: key);

  @override
  _ButtonWideDarkPaymentWidgetState createState() =>
      _ButtonWideDarkPaymentWidgetState();
}

class _ButtonWideDarkPaymentWidgetState
    extends State<ButtonWideDarkPaymentWidget> {
  late ButtonWideDarkPaymentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonWideDarkPaymentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 15.0),
      child: FFButtonWidget(
        onPressed: () async {
          context.pushNamed(
            'Payment',
            extra: <String, dynamic>{
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.rightToLeft,
              ),
            },
          );
        },
        text: 'Payment  →',
        options: FFButtonOptions(
          width: 300.0,
          height: 60.0,
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: FlutterFlowTheme.of(context).primaryColor,
          textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                color: Colors.white,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).subtitle2Family),
              ),
          elevation: 2.0,
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
