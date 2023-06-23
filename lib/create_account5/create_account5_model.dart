import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CreateAccount5Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for buyerName widget.
  TextEditingController? buyerNameController;
  String? Function(BuildContext, String?)? buyerNameControllerValidator;
  String? _buyerNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for location widget.
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;
  String? _locationControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for sellerPhone widget.
  TextEditingController? sellerPhoneController;
  String? Function(BuildContext, String?)? sellerPhoneControllerValidator;
  String? _sellerPhoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for buyerEmail widget.
  TextEditingController? buyerEmailController;
  String? Function(BuildContext, String?)? buyerEmailControllerValidator;
  String? _buyerEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for buyerPassword widget.
  TextEditingController? buyerPasswordController;
  late bool buyerPasswordVisibility;
  String? Function(BuildContext, String?)? buyerPasswordControllerValidator;
  String? _buyerPasswordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'your password less then 8 characters';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buyerNameControllerValidator = _buyerNameControllerValidator;
    locationControllerValidator = _locationControllerValidator;
    sellerPhoneControllerValidator = _sellerPhoneControllerValidator;
    buyerEmailControllerValidator = _buyerEmailControllerValidator;
    buyerPasswordVisibility = false;
    buyerPasswordControllerValidator = _buyerPasswordControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    buyerNameController?.dispose();
    locationController?.dispose();
    sellerPhoneController?.dispose();
    buyerEmailController?.dispose();
    buyerPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
