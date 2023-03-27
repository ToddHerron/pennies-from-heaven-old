import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_button_square_light_model.dart';
export 'icon_button_square_light_model.dart';

class IconButtonSquareLightWidget extends StatefulWidget {
  const IconButtonSquareLightWidget({
    Key? key,
    this.iconButtonIcon,
  }) : super(key: key);

  final Widget? iconButtonIcon;

  @override
  _IconButtonSquareLightWidgetState createState() =>
      _IconButtonSquareLightWidgetState();
}

class _IconButtonSquareLightWidgetState
    extends State<IconButtonSquareLightWidget> {
  late IconButtonSquareLightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconButtonSquareLightModel());

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

    return FlutterFlowIconButton(
      borderColor: Colors.transparent,
      borderRadius: 8.0,
      borderWidth: 1.0,
      buttonSize: 60.0,
      fillColor: FlutterFlowTheme.of(context).secondaryColor,
      icon: widget.iconButtonIcon!,
      onPressed: () {
        print('IconButton pressed ...');
      },
    );
  }
}
