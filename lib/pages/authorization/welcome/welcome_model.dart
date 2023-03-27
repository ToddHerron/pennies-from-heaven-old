import '/components/button_wide_dark_icon_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WelcomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for ButtonWideDarkIcon component.
  late ButtonWideDarkIconModel buttonWideDarkIconModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonWideDarkIconModel =
        createModel(context, () => ButtonWideDarkIconModel());
  }

  void dispose() {
    buttonWideDarkIconModel.dispose();
  }

  /// Additional helper methods are added here.

}
