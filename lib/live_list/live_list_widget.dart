import '../backend/backend.dart';
import '../components/broadcast_name_component_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveListWidget extends StatefulWidget {
  const LiveListWidget({Key? key}) : super(key: key);

  @override
  _LiveListWidgetState createState() => _LiveListWidgetState();
}

class _LiveListWidgetState extends State<LiveListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: 100,
                  child: BroadcastNameComponentWidget(),
                ),
              );
            },
          ).then((value) => setState(() {}));
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.videocam,
          color: FlutterFlowTheme.of(context).primaryBtnText,
          size: 24,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SelectionArea(
                  child: Text(
                'Playbacks',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1,
              )),
              StreamBuilder<List<StreamsRecord>>(
                stream: queryStreamsRecord(
                  queryBuilder: (streamsRecord) =>
                      streamsRecord.orderBy('timestamp', descending: true),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    );
                  }
                  List<StreamsRecord> listViewStreamsRecordList =
                      snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewStreamsRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewStreamsRecord =
                          listViewStreamsRecordList[listViewIndex];
                      return InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'LiveVideoPage',
                            queryParams: {
                              'streamData': serializeParam(
                                listViewStreamsRecord,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'streamData': listViewStreamsRecord,
                            },
                          );

                          if (listViewStreamsRecord.isLive!) {
                            context.pushNamed('LiveVideoPage');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'This Live Stream has ended',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor: Color(0x00000000),
                              ),
                            );
                          }
                        },
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0x9EFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SelectionArea(
                                        child: Text(
                                      listViewStreamsRecord.playbackName!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    )),
                                    SelectionArea(
                                        child: Text(
                                      dateTimeFormat('MMMMEEEEd',
                                          listViewStreamsRecord.timestamp!),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    )),
                                  ],
                                ),
                                if (listViewStreamsRecord.isLive == true)
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    borderWidth: 1,
                                    buttonSize: 60,
                                    icon: Icon(
                                      Icons.play_arrow,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
