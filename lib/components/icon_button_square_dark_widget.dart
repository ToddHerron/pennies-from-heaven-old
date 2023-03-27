import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_button_square_dark_model.dart';
export 'icon_button_square_dark_model.dart';

class IconButtonSquareDarkWidget extends StatefulWidget {
  const IconButtonSquareDarkWidget({
    Key? key,
    this.iconButtonIcon,
  }) : super(key: key);

  final Widget? iconButtonIcon;

  @override
  _IconButtonSquareDarkWidgetState createState() =>
      _IconButtonSquareDarkWidgetState();
}

class _IconButtonSquareDarkWidgetState
    extends State<IconButtonSquareDarkWidget> {
  late IconButtonSquareDarkModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconButtonSquareDarkModel());

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
      fillColor: FlutterFlowTheme.of(context).primaryColor,
      icon: widget.iconButtonIcon!,
      onPressed: () {
        print('IconButton pressed ...');
      },
    );
  }
}
