import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'send_link_text_field_model.dart';
export 'send_link_text_field_model.dart';

class SendLinkTextFieldWidget extends StatefulWidget {
  const SendLinkTextFieldWidget({Key? key}) : super(key: key);

  @override
  _SendLinkTextFieldWidgetState createState() =>
      _SendLinkTextFieldWidgetState();
}

class _SendLinkTextFieldWidgetState extends State<SendLinkTextFieldWidget> {
  late SendLinkTextFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SendLinkTextFieldModel());

    _model.urlLinkController ??= TextEditingController();
    _model.urlLinkFocusNode ??= FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 66.0,
      constraints: BoxConstraints(
        maxWidth: 570.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFF9),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Color(0xFFCECECE),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 20.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: TextFormField(
                  key: ValueKey('jjj'),
                  controller: _model.urlLinkController,
                  focusNode: _model.urlLinkFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Paste a link...',
                    hintStyle: GoogleFonts.getFont(
                      'Roboto',
                      color: Color(0x801B1D24),
                      fontSize: 16.0,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                  style: GoogleFonts.getFont(
                    'Roboto',
                    color: Color(0xFF1B1D24),
                    fontSize: 16.0,
                  ),
                  validator:
                      _model.urlLinkControllerValidator.asValidator(context),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'ListeningPage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 20),
                    ),
                  },
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SvgPicture.asset(
                  'assets/images/icons_(1).svg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
