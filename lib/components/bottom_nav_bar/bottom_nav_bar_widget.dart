import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_nav_bar_model.dart';
export 'bottom_nav_bar_model.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  late BottomNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlutterFlowIconButton(
              borderRadius: 30.0,
              buttonSize: 42.0,
              icon: Icon(
                Icons.home_outlined,
                color: Color(0xFFBDBDBD),
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed('homePage');
              },
            ),
            FlutterFlowIconButton(
              borderRadius: 30.0,
              buttonSize: 42.0,
              icon: Icon(
                Icons.grid_view_outlined,
                color: Color(0xFFBDBDBD),
                size: 24.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            FlutterFlowIconButton(
              borderRadius: 30.0,
              buttonSize: 42.0,
              icon: Icon(
                Icons.storefront,
                color: Color(0xFFBDBDBD),
                size: 24.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            FlutterFlowIconButton(
              borderRadius: 30.0,
              buttonSize: 42.0,
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xFFBDBDBD),
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed('cartScreen');
              },
            ),
            FlutterFlowIconButton(
              borderRadius: 30.0,
              buttonSize: 42.0,
              icon: Icon(
                Icons.person_outline_outlined,
                color: Color(0xFFBDBDBD),
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed('userScreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
