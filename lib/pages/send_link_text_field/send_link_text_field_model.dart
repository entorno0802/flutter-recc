import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'send_link_text_field_widget.dart' show SendLinkTextFieldWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SendLinkTextFieldModel extends FlutterFlowModel<SendLinkTextFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for urlFromTextField widget.
  FocusNode? urlFromTextFieldFocusNode;
  TextEditingController? urlFromTextFieldController;
  String? Function(BuildContext, String?)? urlFromTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    urlFromTextFieldFocusNode?.dispose();
    urlFromTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
