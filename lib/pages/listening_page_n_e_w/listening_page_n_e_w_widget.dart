import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'listening_page_n_e_w_model.dart';
export 'listening_page_n_e_w_model.dart';

class ListeningPageNEWWidget extends StatefulWidget {
  const ListeningPageNEWWidget({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String? url;

  @override
  _ListeningPageNEWWidgetState createState() => _ListeningPageNEWWidgetState();
}

class _ListeningPageNEWWidgetState extends State<ListeningPageNEWWidget>
    with TickerProviderStateMixin {
  late ListeningPageNEWModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.bounceOut,
          delay: 220.ms,
          duration: 1460.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListeningPageNEWModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 2000));
      _model.apiResulttf7 = await GetReccCall.call(
        url: widget.url,
      );
      if ((_model.apiResulttf7?.succeeded ?? true)) {
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

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFFFF9),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Container(
              width: 100.0,
              height: 100.0,
              constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: double.infinity,
                maxWidth: 544.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await Future.delayed(const Duration(milliseconds: 2000));
                  _model.newEndpoint = await GetReccCall.call(
                    url: widget.url,
                  );
                  if ((_model.newEndpoint?.succeeded ?? true)) {
                    context.pushNamed('List02Products');
                  }

                  setState(() {});
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100.0,
                      constraints: BoxConstraints(
                        maxWidth: 544.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFF9),
                        shape: BoxShape.rectangle,
                      ),
                      child: Lottie.asset(
                        'assets/lottie_animations/Animation_-_1699505639871.json',
                        width: 150.0,
                        height: 130.0,
                        fit: BoxFit.cover,
                        animate: true,
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
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation']!),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
