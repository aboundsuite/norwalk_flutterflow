import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'get_prayer_i_d_widget.dart' show GetPrayerIDWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
