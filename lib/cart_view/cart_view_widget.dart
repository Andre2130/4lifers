import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartViewWidget extends StatefulWidget {
  const CartViewWidget({Key? key}) : super(key: key);

  @override
  _CartViewWidgetState createState() => _CartViewWidgetState();
}

class _CartViewWidgetState extends State<CartViewWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 24,
          ),
        ),
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Builder(
                builder: (context) {
                  final cartrItems = FFAppState().Cart.toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: cartrItems.length,
                    itemBuilder: (context, cartrItemsIndex) {
                      final cartrItemsItem = cartrItems[cartrItemsIndex];
                      return StreamBuilder<ProductsRecord>(
                        stream: ProductsRecord.getDocument(cartrItemsItem),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          final rowProductsRecord = snapshot.data!;
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network(
                                rowProductsRecord.image!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Text(
                                  rowProductsRecord.name!,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30,
                                ),
                                onPressed: () async {
                                  setState(() => FFAppState()
                                      .Cart
                                      .remove(rowProductsRecord.reference));
                                  setState(() => FFAppState().total =
                                      FFAppState().total +
                                          functions.negative(
                                              rowProductsRecord.price!));
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('CheckoutView');

                  setState(() => FFAppState().total = 0);
                },
                text: 'CHECKOUT',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
