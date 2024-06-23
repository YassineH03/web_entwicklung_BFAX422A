import '/backend/backend.dart';
import '/components/options_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(130.0),
          child: AppBar(
            backgroundColor: const Color(0xFF271C1C),
            automaticallyImplyLeading: false,
            title: Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Text(
                'Aufgaben',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 50.0,
                      letterSpacing: 0.0,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
            actions: [
              Align(
                alignment: const AlignmentDirectional(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    buttonSize: 100.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: FaIcon(
                      FontAwesomeIcons.ad,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 40.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'createTask',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                          ),
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: StreamBuilder<List<AufgabenRecord>>(
            stream: queryAufgabenRecord(
              queryBuilder: (aufgabenRecord) =>
                  aufgabenRecord.orderBy('completed'),
            ),
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
              List<AufgabenRecord> listViewAufgabenRecordList = snapshot.data!;
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: listViewAufgabenRecordList.length,
                itemBuilder: (context, listViewIndex) {
                  final listViewAufgabenRecord =
                      listViewAufgabenRecordList[listViewIndex];
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onLongPress: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
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
                              child: OptionsMenuWidget(
                                taskRef: listViewAufgabenRecord.reference,
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    child: Container(
                      width: 100.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                30.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await listViewAufgabenRecord.reference
                                    .update(createAufgabenRecordData(
                                  completed:
                                      listViewAufgabenRecord.completed == 0
                                          ? 1
                                          : 0,
                                ));
                              },
                              child: Container(
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: listViewAufgabenRecord.completed == 0
                                      ? FlutterFlowTheme.of(context).secondary
                                      : FlutterFlowTheme.of(context).success,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(
                                        0.0,
                                        2.0,
                                      ),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                50.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  listViewAufgabenRecord.taskName
                                      .maybeHandleOverflow(
                                    maxChars: 30,
                                    replacement: '…',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            listViewAufgabenRecord.completed ==
                                                    0
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryText
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                        fontSize: 30.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  listViewAufgabenRecord.taskDescription
                                      .maybeHandleOverflow(
                                    maxChars: 60,
                                    replacement: '…',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            listViewAufgabenRecord.completed ==
                                                    0
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryText
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 30.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 80.0,
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pushNamed(
                                  'editTask',
                                  queryParameters: {
                                    'taskRef': serializeParam(
                                      listViewAufgabenRecord.reference,
                                      ParamType.DocumentReference,
                                    ),
                                    'taskName': serializeParam(
                                      listViewAufgabenRecord.taskName,
                                      ParamType.String,
                                    ),
                                    'taskDescription': serializeParam(
                                      listViewAufgabenRecord.taskDescription,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
