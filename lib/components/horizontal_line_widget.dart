import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'horizontal_line_model.dart';
export 'horizontal_line_model.dart';

class HorizontalLineWidget extends StatefulWidget {
  const HorizontalLineWidget({Key? key}) : super(key: key);

  @override
  _HorizontalLineWidgetState createState() => _HorizontalLineWidgetState();
}

class _HorizontalLineWidgetState extends State<HorizontalLineWidget> {
  late HorizontalLineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HorizontalLineModel());

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

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 0.0,
          height: 0.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            shape: BoxShape.circle,
          ),
        ),
        Divider(
          thickness: 2.0,
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        Container(
          width: 0.0,
          height: 0.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
