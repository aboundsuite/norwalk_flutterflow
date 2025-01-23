import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'get_prayer_i_d_widget.dart' show GetPrayerIDWidget;
import 'package:flutter/material.dart';

class GetPrayerIDModel extends FlutterFlowModel<GetPrayerIDWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Delete Prayer ID)] action in Icon widget.
  ApiCallResponse? deletePrayer;
  // Stores action output result for [Backend Call - API (Share Prayer With CHurch)] action in FloatingActionButton widget.
  ApiCallResponse? sharedwithChurch;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
