import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebpageWidget extends StatefulWidget {
  const WebpageWidget({Key? key}) : super(key: key);

  @override
  _WebpageWidgetState createState() => _WebpageWidgetState();
}

class _WebpageWidgetState extends State<WebpageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowWebView(
                url: 'https://4lifersworld.com',
                bypass: true,
                height: MediaQuery.of(context).size.height * 0.77,
                verticalScroll: true,
                horizontalScroll: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
