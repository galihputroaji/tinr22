import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailMKWidget extends StatefulWidget {
  const DetailMKWidget({
    Key? key,
    this.namaMK,
    this.dosenMK,
    this.jamMK,
    this.ruangMK,
    this.hpDosen,
  }) : super(key: key);

  final String? namaMK;
  final String? dosenMK;
  final String? jamMK;
  final String? ruangMK;
  final int? hpDosen;

  @override
  _DetailMKWidgetState createState() => _DetailMKWidgetState();
}

class _DetailMKWidgetState extends State<DetailMKWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'DetailMK'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).tertiaryColor,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('DETAIL_M_K_arrow_back_rounded_ICN_ON_TAP');
            logFirebaseEvent('IconButton_navigate_to');

            context.pushNamed('home');

            logFirebaseEvent('IconButton_navigate_to');

            context.pushNamed('home');
          },
        ),
        title: Text(
          widget.namaMK!,
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Outfit',
                color: FlutterFlowTheme.of(context).tertiaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 10, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dosen Pembimbing',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Text(
                                widget.dosenMK!.maybeHandleOverflow(
                                  maxChars: 20,
                                  replacement: '???',
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFF25D366),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 40,
                              icon: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                size: 20,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'DETAIL_M_K_PAGE_whatsapp_ICN_ON_TAP');
                                logFirebaseEvent('IconButton_launch_u_r_l');
                                await launchURL(
                                    'https://wa.me/${widget.hpDosen?.toString()}');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                child: Icon(
                                  Icons.access_time,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 20,
                                ),
                              ),
                              Text(
                                widget.jamMK!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                child: Icon(
                                  Icons.location_on,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 20,
                                ),
                              ),
                              Text(
                                widget.ruangMK!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 5,
              thickness: 5,
              indent: 10,
              endIndent: 10,
              color: FlutterFlowTheme.of(context).tertiaryColor,
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Materi MK',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: StreamBuilder<List<MateriRecord>>(
                stream: queryMateriRecord(
                  queryBuilder: (materiRecord) =>
                      materiRecord.where('mk', isEqualTo: widget.namaMK),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: SpinKitDualRing(
                          color: FlutterFlowTheme.of(context).white,
                          size: 50,
                        ),
                      ),
                    );
                  }
                  List<MateriRecord> listViewMateriRecordList = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewMateriRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewMateriRecord =
                          listViewMateriRecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 4, 10, 5),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'DETAIL_M_K_Container_tm5jw9vr_ON_TAP');
                            logFirebaseEvent('Container_launch_u_r_l');
                            await launchURL(listViewMateriRecord.link!);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          listViewMateriRecord.nama!
                                              .maybeHandleOverflow(
                                            maxChars: 35,
                                            replacement: '???',
                                          ),
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            dateTimeFormat(
                                              'd/M/y',
                                              listViewMateriRecord.createdAt!,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Color(0xB2FFFFFF),
                                                  fontSize: 12,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
