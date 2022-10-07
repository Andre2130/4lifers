import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsWidget extends StatefulWidget {
  const EventsWidget({Key? key}) : super(key: key);

  @override
  _EventsWidgetState createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget>
    with TickerProviderStateMixin {
  DateTime? datePicked;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                height: 500,
                child: Stack(
                  alignment: AlignmentDirectional(0, -1),
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.05, -1),
                      child: Image.asset(
                        'assets/images/4lifers.jpg',
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        color: Color(0x8D090F13),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 24, 16, 44),
                              child: Text(
                                'Don\'t Miss When the Gang Comes to Town',
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 70, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: textController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        hintText: 'City, zipcode',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 16,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    borderWidth: 1,
                                    buttonSize: 60,
                                    icon: Icon(
                                      Icons.calendar_today,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      await DatePicker.showDatePicker(
                                        context,
                                        showTitleActions: true,
                                        onConfirm: (date) {
                                          setState(() => datePicked = date);
                                        },
                                        currentTime: getCurrentTimestamp,
                                        minTime: getCurrentTimestamp,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                              child: Container(
                                width: double.infinity,
                                height: 700,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 16),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(
                                          height: 8,
                                          thickness: 4,
                                          indent: 140,
                                          endIndent: 140,
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 16, 0),
                                          child: Text(
                                            'Upcoming Events',
                                            style: FlutterFlowTheme.of(context)
                                                .title2,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 0),
                                          child: Text(
                                            '30 locations world wide',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: ListView(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 8, 0, 8),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'EventDetails');
                                                    },
                                                    child: Container(
                                                      width: 270,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 8,
                                                            color: Color(
                                                                0x230F1113),
                                                            offset:
                                                                Offset(0, 4),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                                Image.network(
                                                              'data:image/jpeg;base64,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',
                                                              width: double
                                                                  .infinity,
                                                              height: 110,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        12,
                                                                        16,
                                                                        12),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Off Season Tour',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle1,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          RatingBarIndicator(
                                                                            itemBuilder: (context, index) =>
                                                                                Icon(
                                                                              Icons.radio_button_checked_rounded,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            rating:
                                                                                4,
                                                                            unratedColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            itemCount:
                                                                                5,
                                                                            itemSize:
                                                                                16,
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              '4.7',
                                                                              style: FlutterFlowTheme.of(context).bodyText2,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Container(
                                                                  height: 32,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0, 0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                    child: Text(
                                                                      '\$220 USD',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 8, 16, 8),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'EventDetails');
                                                    },
                                                    child: Container(
                                                      width: 270,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 8,
                                                            color: Color(
                                                                0x230F1113),
                                                            offset:
                                                                Offset(0, 4),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                                Image.network(
                                                              'data:image/jpeg;base64,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',
                                                              width: double
                                                                  .infinity,
                                                              height: 110,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        12,
                                                                        16,
                                                                        12),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Coulda Been Live',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle1,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          RatingBarIndicator(
                                                                            itemBuilder: (context, index) =>
                                                                                Icon(
                                                                              Icons.radio_button_checked_rounded,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            rating:
                                                                                4,
                                                                            unratedColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            itemCount:
                                                                                5,
                                                                            itemSize:
                                                                                16,
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              '4.7',
                                                                              style: FlutterFlowTheme.of(context).bodyText2,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Container(
                                                                  height: 32,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0, 0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                    child: Text(
                                                                      '\$220 USD',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 16, 0),
                                          child: Text(
                                            'Previous Events',
                                            style: FlutterFlowTheme.of(context)
                                                .title2,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 0),
                                          child: Text(
                                            '10 spots to catch some zzz\'s',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 2),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 8, 16, 8),
                                                child: InkWell(
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'EventDetails');
                                                  },
                                                  child: Container(
                                                    width: 270,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 8,
                                                          color:
                                                              Color(0x230F1113),
                                                          offset: Offset(0, 4),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Hero(
                                                          tag: 'italyImage',
                                                          transitionOnUserGestures:
                                                              true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                                Image.network(
                                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQslIDeUznWO8qGEBUH0PoVlGMAgZDJM8Se3g&usqp=CAU',
                                                              width: double
                                                                  .infinity,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      12,
                                                                      16,
                                                                      12),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Firenze - Giardino Bardini',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle1,
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            8,
                                                                            0,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        RatingBarIndicator(
                                                                          itemBuilder: (context, index) =>
                                                                              Icon(
                                                                            Icons.radio_button_checked_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          rating:
                                                                              4,
                                                                          unratedColor:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          itemCount:
                                                                              5,
                                                                          itemSize:
                                                                              16,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '4.7',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText2,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                height: 32,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12),
                                                                ),
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0, 0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child: Text(
                                                                    '\$220 USD',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 8, 16, 8),
                                                child: Container(
                                                  width: 270,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 8,
                                                        color:
                                                            Color(0x230F1113),
                                                        offset: Offset(0, 4),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  12),
                                                          topRight:
                                                              Radius.circular(
                                                                  12),
                                                        ),
                                                        child: Image.network(
                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlMtmv9pj7KYNclmBUqV-T_FOALnNgm7KPgA&usqp=CAU',
                                                          width:
                                                              double.infinity,
                                                          height: 200,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16,
                                                                    12, 16, 12),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Cinque Terre',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle1,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      RatingBarIndicator(
                                                                        itemBuilder:
                                                                            (context, index) =>
                                                                                Icon(
                                                                          Icons
                                                                              .radio_button_checked_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        rating:
                                                                            4,
                                                                        unratedColor:
                                                                            FlutterFlowTheme.of(context).secondaryText,
                                                                        itemCount:
                                                                            5,
                                                                        itemSize:
                                                                            16,
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          '4.7',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyText2,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Container(
                                                              height: 32,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12),
                                                              ),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                child: Text(
                                                                  '\$220 USD',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
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
          ],
        ),
      ),
    );
  }
}
