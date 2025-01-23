import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'address_widget.dart' show AddressWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AddressModel extends FlutterFlowModel<AddressWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for address1 widget.
  FocusNode? address1FocusNode;
  TextEditingController? address1TextController;
  String? Function(BuildContext, String?)? address1TextControllerValidator;
  // State field(s) for address12 widget.
  FocusNode? address12FocusNode1;
  TextEditingController? address12TextController1;
  String? Function(BuildContext, String?)? address12TextController1Validator;
  // State field(s) for address12 widget.
  FocusNode? address12FocusNode2;
  TextEditingController? address12TextController2;
  String? Function(BuildContext, String?)? address12TextController2Validator;
  // State field(s) for address12 widget.
  FocusNode? address12FocusNode3;
  TextEditingController? address12TextController3;
  String? Function(BuildContext, String?)? address12TextController3Validator;
  // Stores action output result for [Backend Call - API (Member Address)] action in Button widget.
  ApiCallResponse? addressadded;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    address1FocusNode?.dispose();
    address1TextController?.dispose();

    address12FocusNode1?.dispose();
    address12TextController1?.dispose();

    address12FocusNode2?.dispose();
    address12TextController2?.dispose();

    address12FocusNode3?.dispose();
    address12TextController3?.dispose();
  }
}
