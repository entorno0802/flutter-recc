import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listening_page_model.dart';
export 'listening_page_model.dart';

class ListeningPageWidget extends StatefulWidget {
  const ListeningPageWidget({
    Key? key,
    String? urlLink,
  })  : this.urlLink = urlLink ?? '',
        super(key: key);

  final String urlLink;

  @override
  _ListeningPageWidgetState createState() => _ListeningPageWidgetState();
}

class _ListeningPageWidgetState extends State<ListeningPageWidget> {
  late ListeningPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListeningPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.extractDataResponse =
          await ReccApiGroup.extractMentionedDataCall.call(
        url: widget.urlLink,
      );
      if ((_model.extractDataResponse?.succeeded ?? true)) {
        context.pushNamed('List02Products');
      } else {
        context.pushNamed('List02Products');
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFFFF9),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SvgPicture.asset(
                  'assets/images/Group_21042.svg',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: 39.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFF9),
                  shape: BoxShape.rectangle,
                ),
              ),
              AutoSizeText(
                'Listening...',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Roboto',
                  color: Color(0xBF1B1D24),
                  fontSize: 16.0,
                  height: 24.0,
                ),
                minFontSize: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
