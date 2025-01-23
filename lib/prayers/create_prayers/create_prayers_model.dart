import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'create_prayers_widget.dart' show CreatePrayersWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CreatePrayersModel extends FlutterFlowModel<CreatePrayersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for prayerDecscr widget.
  FocusNode? prayerDecscrFocusNode;
  TextEditingController? prayerDecscrTextController;
  String? Function(BuildContext, String?)? prayerDecscrTextControllerValidator;
  // Stores action output result for [Backend Call - API (Create User Prayer)] action in Button widget.
  ApiCallResponse? userPrayerCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    prayerDecscrFocusNode?.dispose();
    prayerDecscrTextController?.dispose();
  }
}
