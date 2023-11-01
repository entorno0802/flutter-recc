import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/copy_recc_bottom_sheet/copy_recc_bottom_sheet_widget.dart';
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
        body: Column(
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
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 12.0),
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
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
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                  child: Text(
                    'The Neuroscience of Optimal Performance: Dr. Andrew Huberman | Rich Roll Podcast',
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
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
              child: Text(
                'In this podcast, the hosts extensively discuss the concept of aging, its effects on the human body, and various strategies to slow it down. They delve moreious drugs, supplements, and practices that purportedly aid in extending human lifespan. In this particular episode, they discuss supplements that are aimed at promoting longevity and health, such as Resveratrol, NMN, Metformin, Spermidine, Fisetin, Quercetin and other compounds.',
                textAlign: TextAlign.start,
                style: GoogleFonts.getFont(
                  'Roboto',
                  color: Color(0xBF1B1D24),
                  fontSize: 14.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 36.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'View Source',
                    options: FFButtonOptions(
                      width: 146.0,
                      height: 31.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                  FFButtonWidget(
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
                            onTap: () => _model.unfocusNode.canRequestFocus
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
              width: double.infinity,
              height: 395.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 12.0),
                    child: Container(
                      height: 18.0,
                      constraints: BoxConstraints(
                        maxHeight: 18.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Text(
                        'BOOKS',
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 12.0),
                    child: Container(
                      height: 100.0,
                      constraints: BoxConstraints(
                        maxHeight: 100.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                  fit: BoxFit.contain,
                                  image: CachedNetworkImageProvider(
                                    'https://s3-alpha-sig.figma.com/img/df98/88fa/cc7678c2b4c0ad8b3a03ed10cccd9c5e?Expires=1699228800&Signature=IROxWT4xDX7NgW-wPxspIHKpo4DoMYQk1t5iLnnBzwCO11iUPZQ2amkvG8E7rHE3um1y2o~ughCjSAzj3w9jyjSmg32Ntziac-VsOjcMvY5vOdPln0QRfYIoc01MRLJ-sbtDQFOov4NmWWYrQJqKrW0~SeTNCjiuDHx2Pa1du9~ooZtXRhVrQ2zIx5AxAtZZZe1~G4ghUijSCSi74fZRXmy-ql8O5LB7zo7KEF6gqMweKUJHACQc4nC~-dCxSXdZyMqA9eWDexTU~96Zm4yoTBl~VHTK~zt-FBeLTlEok~H6f5oO71v7IVyGdEMB5rjGF2F9lxHMryD0GNgx0f-YRA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Stolen Focus',
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      color: Color(0xFF1B1D24),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text(
                                    'Johann Hari',
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      color: Color(0xFF1B1D24),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text(
                                    'Johann Harjjjjjjjjjjjjj',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      color: Color(0x801B1D24),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.chevronRight,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 12.0),
                    child: Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 12.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxHeight: 100.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                  fit: BoxFit.contain,
                                  image: CachedNetworkImageProvider(
                                    'https://s3-alpha-sig.figma.com/img/6617/e42c/bf02dbd8101091b753de9ee6c8d08a05?Expires=1699228800&Signature=Gg5B36lgfVR6k~yrYNTh2ewF1Y7PN3nAZ~tHud87N30bIpAPz5PypY-ozeRDSPD-LkpQIv3jtqLOJo0vIT1lD66RLLm9FMlG27Ate5FhHkcnmRDmya9XUOXr20gnlfKF-QvhdJTm~CbN-d38fHEFNx1CIcwuwNAXWioBVIF1fiF8ncDr1yOeMphjFbU1Qgdrf3HAGsEoGfRpf5O~LuDN05iJcHcEfx33YxbF0WtGk0WjfmlSx20629bZECnbNYfvNoi93CuUTwM8SrEBaHxrTWs6M9t1z50C7Dn9DGI37eNtNfR-X~oM8gywNV7VZ81sVTVVKRy3c-JZfh1JdV~1mA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Finding Ultra',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    color: Color(0xFF1B1D24),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  'Johann Hari',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    color: Color(0xFF1B1D24),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  'Johann Harjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    color: Color(0x801B1D24),
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.chevronRight,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 12.0),
                    child: Container(
                      height: 18.0,
                      constraints: BoxConstraints(
                        maxHeight: 18.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Text(
                        'EVENTS',
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 12.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxHeight: 100.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                    'https://s3-alpha-sig.figma.com/img/31a8/34c2/302dc063739fc83cc0ee97f522e7d768?Expires=1699228800&Signature=Cexcm5r9z2sOw5XELVZaNOYdp-4XFAvUWWazAw7epRzaXpfOIa4sOhwZohRS8rSaHMau-a2i1CIZ2VA~YrAX5OeuNbsYuCzbBzD04p8rZvUpXjgAw7neSEOJ0KdfIueVXCdTT6VmSYxC8UTHOdXv-qzNCK3AkaMN6P4oBiO9waSfONE33fIxlkxZn64BPmPjthIMJg3dEvCG7ROYAzmcoTDsbChX3U-JOXqI0uvjn5VciKNyVhT77bZtGKUQbH9vMkTrHxzsuS2Swauz3zJNwNw8-3qyo7y8P72UuZ~9zkexOWv~8DbSkTAS7ArfieUMJ0FYtCbUxsLRzSN6z~4ApQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Huberman Lab Live Events',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    color: Color(0xFF1B1D24),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  'Dr. Andrew Huberman',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    color: Color(0xFF1B1D24),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  'Johann Harjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    color: Color(0x801B1D24),
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.chevronRight,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
