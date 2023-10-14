import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'users_side_bar_model.dart';
export 'users_side_bar_model.dart';

class UsersSideBarWidget extends StatefulWidget {
  const UsersSideBarWidget({Key? key}) : super(key: key);

  @override
  _UsersSideBarWidgetState createState() => _UsersSideBarWidgetState();
}

class _UsersSideBarWidgetState extends State<UsersSideBarWidget> {
  late UsersSideBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsersSideBarModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (valueOrDefault<bool>(currentUserDocument?.isAdmin, false) == false)
          AuthUserStreamWidget(
            builder: (context) => FFButtonWidget(
              onPressed: () async {
                context.pushNamed('homePage');
              },
              text: 'Menu',
              options: FFButtonOptions(
                width: double.infinity,
                height: 70.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).success,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 28.0,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
      ],
    );
  }
}
