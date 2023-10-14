import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // State field(s) for password-Create widget.
  TextEditingController? passwordCreateController1;
  late bool passwordCreateVisibility1;
  String? Function(BuildContext, String?)? passwordCreateController1Validator;
  // State field(s) for password-Create widget.
  TextEditingController? passwordCreateController2;
  late bool passwordCreateVisibility2;
  String? Function(BuildContext, String?)? passwordCreateController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    passwordCreateVisibility1 = false;
    passwordCreateVisibility2 = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailController?.dispose();
    pinCodeController?.dispose();
    passwordCreateController1?.dispose();
    passwordCreateController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
