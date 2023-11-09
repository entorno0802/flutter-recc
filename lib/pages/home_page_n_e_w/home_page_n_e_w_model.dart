import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/send_link_text_field/send_link_text_field_widget.dart';
import 'home_page_n_e_w_widget.dart' show HomePageNEWWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageNEWModel extends FlutterFlowModel<HomePageNEWWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Recc)] action in HomePageNEW widget.
  ApiCallResponse? apiResult4v6;
  // Model for SendLinkTextField component.
  late SendLinkTextFieldModel sendLinkTextFieldModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sendLinkTextFieldModel =
        createModel(context, () => SendLinkTextFieldModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sendLinkTextFieldModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
