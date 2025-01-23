import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'delete_confirmation_widget.dart' show DeleteConfirmationWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DeleteConfirmationModel
    extends FlutterFlowModel<DeleteConfirmationWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Account Delete Cancel)] action in Button-Login widget.
  ApiCallResponse? cancelDelete;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
