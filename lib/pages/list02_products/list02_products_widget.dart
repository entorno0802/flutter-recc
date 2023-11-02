import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/copy_recc_bottom_sheet/copy_recc_bottom_sheet_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list02_products_model.dart';
export 'list02_products_model.dart';

class List02ProductsWidget extends StatefulWidget {
  const List02ProductsWidget({Key? key}) : super(key: key);

  @override
  _List02ProductsWidgetState createState() => _List02ProductsWidgetState();
}

class _List02ProductsWidgetState extends State<List02ProductsWidget> {
  late List02ProductsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => List02ProductsModel());

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: FaIcon(
                FontAwesomeIcons.chevronLeft,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () async {
                if (Navigator.of(context).canPop()) {
                  context.pop();
                }
                context.pushNamed('HomePage');
              },
            ),
          ),
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/Group_21042.svg',
              height: 30.0,
              fit: BoxFit.contain,
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: FutureBuilder<ApiCallResponse>(
          future: ReccApiGroup.extractMentionedDataCall.call(),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            final columnExtractMentionedDataResponse = snapshot.data!;
            return Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            'https://s3-alpha-sig.figma.com/img/54b2/a098/956f0e190abc2fdc316b7e0b342852de?Expires=1699228800&Signature=R8QYXR~wlBHNIqoJxjABircPPLZEvuPw0o3R8ZtWoywyKnslOejwsrnAutTY9J8eeakWY2yw4AqS-lqO1-BRvqy~uWUYkZVtDCWV4Eh95irNlJqbXhBc-6RyLcGjWUz69bWRJyGxcvIbLq0yVLgiimxfS8K6546kRgqrRWnBOTH7~oCGzomaOQsWovaRDtUGdoMUFOamsaGy6XoKlqXGoRTmSJQtv04oX73bcH0dXLWMSb1-VUbez9AQ3eFQP7ESPw9RP8SEyfo8BUV1qTa-sar0o0tCi~h0B9SFqe5mFZ8tUn3pL5XDy5vsiXDtZAtZVo~suarOXTYwsVwDkqmLTw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Rich Roll',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                color: Color(0xFF1B1D24),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Text(
                        valueOrDefault<String>(
                          ReccApiGroup.extractMentionedDataCall
                              .title(
                                columnExtractMentionedDataResponse.jsonBody,
                              )
                              .toString(),
                          'The Neuroscience of Optimal Performance: Dr. Andrew Huberman | Rich Roll Podcast',
                        ),
                        textAlign: TextAlign.start,
                        style: GoogleFonts.getFont(
                          'Roboto',
                          color: Color(0xFF1B1D24),
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
                  child: Text(
                    ReccApiGroup.extractMentionedDataCall
                        .transcript(
                          columnExtractMentionedDataResponse.jsonBody,
                        )
                        .toString(),
                    textAlign: TextAlign.start,
                    style: GoogleFonts.getFont(
                      'Roboto',
                      color: Color(0xBF1B1D24),
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 36.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'View Source',
                          options: FFButtonOptions(
                            width: 146.0,
                            height: 31.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFFFFFF9),
                            textStyle: GoogleFonts.getFont(
                              'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Color(0xFF9F9D9D),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Color(0xFFD1D2CE),
                              barrierColor: Color(0xFFD1D2CE),
                              isDismissible: false,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: CopyReccBottomSheetWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          text: 'Share',
                          options: FFButtonOptions(
                            width: 146.0,
                            height: 31.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF1B1D24),
                            textStyle: GoogleFonts.getFont(
                              'Roboto',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Color(0xFF1B1D24),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 25.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFF9),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Builder(
                    builder: (context) {
                      final medias = ReccApiGroup.extractMentionedDataCall
                              .media(
                                columnExtractMentionedDataResponse.jsonBody,
                              )
                              ?.toList() ??
                          [];
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: medias.length,
                        itemBuilder: (context, mediasIndex) {
                          final mediasItem = medias[mediasIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 12.0),
                                child: Container(
                                  height: 18.0,
                                  constraints: BoxConstraints(
                                    maxHeight: 18.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Text(
                                    (ReccApiGroup.extractMentionedDataCall
                                            .mediaCategory(
                                      columnExtractMentionedDataResponse
                                          .jsonBody,
                                    ) as List)
                                        .map<String>((s) => s.toString())
                                        .toList()[mediasIndex],
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      color: Color(0xFF1B1D24),
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 12.0),
                                child: Container(
                                  height: 100.0,
                                  constraints: BoxConstraints(
                                    maxHeight: 100.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Container(
                                          width: 64.0,
                                          height: 96.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            image: DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: CachedNetworkImageProvider(
                                                ReccApiGroup
                                                    .extractMentionedDataCall
                                                    .mediaImage(
                                                  columnExtractMentionedDataResponse
                                                      .jsonBody,
                                                )[mediasIndex],
                                              ),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  (ReccApiGroup
                                                          .extractMentionedDataCall
                                                          .mediaTitle(
                                                    columnExtractMentionedDataResponse
                                                        .jsonBody,
                                                  ) as List)
                                                      .map<String>(
                                                          (s) => s.toString())
                                                      .toList()[mediasIndex],
                                                  'Stolen Foc',
                                                ),
                                                style: GoogleFonts.getFont(
                                                  'Roboto',
                                                  color: Color(0xFF1B1D24),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                              Text(
                                                (ReccApiGroup
                                                        .extractMentionedDataCall
                                                        .mediaAuthor(
                                                  columnExtractMentionedDataResponse
                                                      .jsonBody,
                                                ) as List)
                                                    .map<String>(
                                                        (s) => s.toString())
                                                    .toList()[mediasIndex],
                                                style: GoogleFonts.getFont(
                                                  'Roboto',
                                                  color: Color(0xFF1B1D24),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                              Expanded(
                                                child: AutoSizeText(
                                                  (ReccApiGroup
                                                          .extractMentionedDataCall
                                                          .mediaDescription(
                                                    columnExtractMentionedDataResponse
                                                        .jsonBody,
                                                  ) as List)
                                                      .map<String>(
                                                          (s) => s.toString())
                                                      .toList()[mediasIndex],
                                                  textAlign: TextAlign.start,
                                                  style: GoogleFonts.getFont(
                                                    'Roboto',
                                                    color: Color(0x801B1D24),
                                                    fontSize: 12.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.chevronRight,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
