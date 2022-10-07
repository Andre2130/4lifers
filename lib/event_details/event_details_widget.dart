import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class EventDetailsWidget extends StatefulWidget {
  const EventDetailsWidget({Key? key}) : super(key: key);

  @override
  _EventDetailsWidgetState createState() => _EventDetailsWidgetState();
}

class _EventDetailsWidgetState extends State<EventDetailsWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: CachedNetworkImageProvider(
                'data:image/jpeg;base64,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',
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 44, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 40,
                      fillColor: Color(0x33090F13),
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 40,
                            fillColor: Color(0x33090F13),
                            icon: Icon(
                              Icons.ios_share,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          fillColor: Color(0x33090F13),
                          icon: Icon(
                            Icons.favorite_border,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0x00090F13), Color(0x991D2429)],
                    stops: [0, 0.5],
                    begin: AlignmentDirectional(0, -1),
                    end: AlignmentDirectional(0, 1),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Coulda Been Records Live',
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Atlanta, GA',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      RatingBarIndicator(
                                        itemBuilder: (context, index) => Icon(
                                          Icons.radio_button_checked_rounded,
                                          color: Colors.white,
                                        ),
                                        direction: Axis.horizontal,
                                        rating: 4,
                                        unratedColor: Color(0x9AFFFFFF),
                                        itemCount: 5,
                                        itemSize: 16,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 0, 0),
                                        child: Text(
                                          '4.7',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 32,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                child: Text(
                                  '\$220 USD',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                        child: Text(
                          'Description',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                        child: Text(
                          'Non so se la bellezza salverà il mondo ma sicuramente aiuta. Sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0x9AFFFFFF),
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
