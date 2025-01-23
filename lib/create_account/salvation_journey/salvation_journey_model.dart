import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'salvation_journey_widget.dart' show SalvationJourneyWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SalvationJourneyModel extends FlutterFlowModel<SalvationJourneyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for isSaved widget.
  bool? isSavedValue;
  DateTime? datePicked1;
  // State field(s) for isBaptized widget.
  bool? isBaptizedValue;
  DateTime? datePicked2;
  // State field(s) for isAMember widget.
  bool? isAMemberValue;
  DateTime? datePicked3;
  // State field(s) for isDiscipled widget.
  bool? isDiscipledValue;
  DateTime? datePicked4;
  // State field(s) for isServing widget.
  bool? isServingValue;
  DateTime? datePicked5;
  // Stores action output result for [Backend Call - API (Member Soul Journey Self)] action in Button widget.
  ApiCallResponse? soulJourneyCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
