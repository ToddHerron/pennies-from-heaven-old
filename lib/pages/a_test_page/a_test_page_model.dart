import '/components/expiry_date_input_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ATestPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for expiryDateInput component.
  late ExpiryDateInputModel expiryDateInputModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    expiryDateInputModel = createModel(context, () => ExpiryDateInputModel());
  }

  void dispose() {
    expiryDateInputModel.dispose();
  }

  /// Additional helper methods are added here.

}
