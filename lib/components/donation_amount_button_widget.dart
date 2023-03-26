import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'donation_amount_button_model.dart';
export 'donation_amount_button_model.dart';

class DonationAmountButtonWidget extends StatefulWidget {
  const DonationAmountButtonWidget({
    Key? key,
    int? amountIndex,
  })  : this.amountIndex = amountIndex ?? 1,
        super(key: key);

  final int amountIndex;

  @override
  _DonationAmountButtonWidgetState createState() =>
      _DonationAmountButtonWidgetState();
}

class _DonationAmountButtonWidgetState
    extends State<DonationAmountButtonWidget> {
  late DonationAmountButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DonationAmountButtonModel());

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
      onPressed: () async {
        _model.updatePage(() {
          FFAppState().donationAmount =
              FFAppState().donationAmounts[widget.amountIndex];
        });
        _model.updatePage(() {
          FFAppState().isCustomAmount = false;
        });
        _model.updatePage(() {
          FFAppState().selectedDonationButtonIndex = widget.amountIndex;
        });
      },
      text: formatNumber(
        FFAppState().donationAmounts[widget.amountIndex],
        formatType: FormatType.custom,
        format: '\$###',
        locale: '',
      ),
      options: FFButtonOptions(
        width: 100.0,
        height: 100.0,
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FFAppState().donationAmounts[widget.amountIndex] ==
                FFAppState()
                    .donationAmounts[FFAppState().selectedDonationButtonIndex]
            ? FlutterFlowTheme.of(context).tertiaryColor
            : FlutterFlowTheme.of(context).secondaryBackground,
        textStyle: FlutterFlowTheme.of(context).subtitle2.override(
              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
              color: !FFAppState().isCustomAmount &&
                      (FFAppState().donationAmounts[widget.amountIndex] ==
                          FFAppState().donationAmount)
                  ? FlutterFlowTheme.of(context).primaryBackground
                  : FlutterFlowTheme.of(context).secondaryText,
              fontSize: 30.0,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).subtitle2Family),
            ),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
        hoverColor: FlutterFlowTheme.of(context).tertiaryColor,
        hoverBorderSide: BorderSide(
          color: FlutterFlowTheme.of(context).tertiaryColor,
          width: 1.0,
        ),
        hoverTextColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
