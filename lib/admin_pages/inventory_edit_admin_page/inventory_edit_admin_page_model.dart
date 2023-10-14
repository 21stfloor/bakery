import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/admin_side_bar/admin_side_bar_widget.dart';
import '/components/users_side_bar/users_side_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'inventory_edit_admin_page_widget.dart'
    show InventoryEditAdminPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InventoryEditAdminPageModel
    extends FlutterFlowModel<InventoryEditAdminPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for category widget.
  TextEditingController? categoryController;
  String? Function(BuildContext, String?)? categoryControllerValidator;
  // State field(s) for cost widget.
  TextEditingController? costController;
  String? Function(BuildContext, String?)? costControllerValidator;
  // State field(s) for quantity widget.
  TextEditingController? quantityController;
  String? Function(BuildContext, String?)? quantityControllerValidator;
  // State field(s) for storage widget.
  TextEditingController? storageController;
  String? Function(BuildContext, String?)? storageControllerValidator;
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
    nameController?.dispose();
    categoryController?.dispose();
    costController?.dispose();
    quantityController?.dispose();
    storageController?.dispose();
    usersSideBarModel.dispose();
    adminSideBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
