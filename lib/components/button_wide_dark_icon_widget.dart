import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_wide_dark_icon_model.dart';
export 'button_wide_dark_icon_model.dart';

class ButtonWideDarkIconWidget extends StatefulWidget {
  const ButtonWideDarkIconWidget({
    Key? key,
    String? wideButtonText,
    this.wideButtonIcon,
  })  : this.wideButtonText = wideButtonText ?? 'Default Button Text',
        super(key: key);

  final String wideButtonText;
  final Widget? wideButtonIcon;

  @override
  _ButtonWideDarkIconWidgetState createState() =>
      _ButtonWideDarkIconWidgetState();
}

class _ButtonWideDarkIconWidgetState extends State<ButtonWideDarkIconWidget> {
  late ButtonWideDarkIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonWideDarkIconModel());

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

    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: widget.wideButtonText,
      icon: widget.wideButtonIcon,
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
        elevation: 0.0,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
