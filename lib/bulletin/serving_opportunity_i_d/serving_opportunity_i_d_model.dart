import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'serving_opportunity_i_d_widget.dart' show ServingOpportunityIDWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServingOpportunityIDModel
    extends FlutterFlowModel<ServingOpportunityIDWidget> {
  ///  Local state fields for this page.

  bool bulletinReaction = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Join a Serving Opportunity Team)] action in Button widget.
  ApiCallResponse? onetimesignup;
  // Stores action output result for [Backend Call - API (Join a Serving Opportunity Team)] action in Button widget.
  ApiCallResponse? apiResultcly;
  // Stores action output result for [Backend Call - API (Join a Serving Opportunity Team)] action in Button widget.
  ApiCallResponse? joining;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
