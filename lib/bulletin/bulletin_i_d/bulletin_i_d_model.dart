import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'bulletin_i_d_widget.dart' show BulletinIDWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BulletinIDModel extends FlutterFlowModel<BulletinIDWidget> {
  ///  Local state fields for this page.

  bool bulletinReaction = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Create a Bulletin View Record)] action in bulletinID widget.
  ApiCallResponse? apiResult8xs;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
