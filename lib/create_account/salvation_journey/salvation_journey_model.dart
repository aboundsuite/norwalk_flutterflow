import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'salvation_journey_widget.dart' show SalvationJourneyWidget;
import 'package:flutter/material.dart';

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
