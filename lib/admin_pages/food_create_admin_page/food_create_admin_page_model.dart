import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/admin_side_bar/admin_side_bar_widget.dart';
import '/components/users_side_bar/users_side_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'food_create_admin_page_widget.dart' show FoodCreateAdminPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodCreateAdminPageModel
    extends FlutterFlowModel<FoodCreateAdminPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for descriptionField widget.
  TextEditingController? descriptionFieldController;
  String? Function(BuildContext, String?)? descriptionFieldControllerValidator;
  String? _descriptionFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for priceField widget.
  TextEditingController? priceFieldController;
  String? Function(BuildContext, String?)? priceFieldControllerValidator;
  String? _priceFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for discountedPriceField widget.
  TextEditingController? discountedPriceFieldController;
  String? Function(BuildContext, String?)?
      discountedPriceFieldControllerValidator;
  String? _discountedPriceFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for available widget.
  String? availableValue;
  FormFieldController<String>? availableValueController;
  // Model for adminSideBar component.
  late AdminSideBarModel adminSideBarModel;
  // Model for usersSideBar component.
  late UsersSideBarModel usersSideBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    descriptionFieldControllerValidator = _descriptionFieldControllerValidator;
    priceFieldControllerValidator = _priceFieldControllerValidator;
    discountedPriceFieldControllerValidator =
        _discountedPriceFieldControllerValidator;
    adminSideBarModel = createModel(context, () => AdminSideBarModel());
    usersSideBarModel = createModel(context, () => UsersSideBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    nameController?.dispose();
    descriptionFieldController?.dispose();
    priceFieldController?.dispose();
    discountedPriceFieldController?.dispose();
    adminSideBarModel.dispose();
    usersSideBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
