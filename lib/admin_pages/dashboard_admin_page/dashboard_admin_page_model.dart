import '/auth/firebase_auth/auth_util.dart';
import '/components/admin_side_bar/admin_side_bar_widget.dart';
import '/components/users_side_bar/users_side_bar_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dashboard_admin_page_widget.dart' show DashboardAdminPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardAdminPageModel
    extends FlutterFlowModel<DashboardAdminPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for usersSideBar component.
  late UsersSideBarModel usersSideBarModel;
  // Model for adminSideBar component.
  late AdminSideBarModel adminSideBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    usersSideBarModel = createModel(context, () => UsersSideBarModel());
    adminSideBarModel = createModel(context, () => AdminSideBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    usersSideBarModel.dispose();
    adminSideBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
