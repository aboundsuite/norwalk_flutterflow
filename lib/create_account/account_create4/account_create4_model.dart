import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'account_create4_widget.dart' show AccountCreate4Widget;
import 'package:flutter/material.dart';

class AccountCreate4Model extends FlutterFlowModel<AccountCreate4Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (OTP verification )] action in Button widget.
  ApiCallResponse? otpverified;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
