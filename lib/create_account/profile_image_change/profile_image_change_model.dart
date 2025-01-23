import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_image_change_widget.dart' show ProfileImageChangeWidget;
import 'package:flutter/material.dart';

class ProfileImageChangeModel
    extends FlutterFlowModel<ProfileImageChangeWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Member Profile Picture)] action in Button widget.
  ApiCallResponse? userProfilePhotoUpdated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
