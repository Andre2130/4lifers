import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutViewWidget extends StatefulWidget {
  const CheckoutViewWidget({Key? key}) : super(key: key);

  @override
  _CheckoutViewWidgetState createState() => _CheckoutViewWidgetState();
}

class _CheckoutViewWidgetState extends State<CheckoutViewWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Checkout',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Builder(
                  builder: (context) {
                    final cartItems = FFAppState().Cart.toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: cartItems.length,
                      itemBuilder: (context, cartItemsIndex) {
                        final cartItemsItem = cartItems[cartItemsIndex];
                        return StreamBuilder<ProductsRecord>(
                          stream: ProductsRecord.getDocument(cartItemsItem),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            final rowProductsRecord = snapshot.data!;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.network(
                                  rowProductsRecord.image!,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  rowProductsRecord.name!,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  formatNumber(
                                    rowProductsRecord.price!,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.automatic,
                                    currency: '\$',
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            );
                          },
                        );
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Total: ',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Text(
                        formatNumber(
                          FFAppState().total,
                          formatType: FormatType.decimal,
                          decimalType: DecimalType.automatic,
                          currency: '\$',
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('Home');
                    },
                    text: 'Checkout',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
