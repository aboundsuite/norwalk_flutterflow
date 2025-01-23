import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_iimage_add_widget.dart' show ProfileIimageAddWidget;
import 'package:flutter/material.dart';

class ProfileIimageAddModel extends FlutterFlowModel<ProfileIimageAddWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Member Profile Picture)] action in Button widget.
  ApiCallResponse? profilePicAdded;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
