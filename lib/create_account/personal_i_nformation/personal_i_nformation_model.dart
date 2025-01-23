import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'personal_i_nformation_widget.dart' show PersonalINformationWidget;
import 'package:flutter/material.dart';

class PersonalINformationModel
    extends FlutterFlowModel<PersonalINformationWidget> {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked1;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (Member Profile)] action in Button widget.
  ApiCallResponse? profileCompleted;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
