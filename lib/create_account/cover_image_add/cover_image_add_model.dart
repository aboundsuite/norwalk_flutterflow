import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cover_image_add_widget.dart' show CoverImageAddWidget;
import 'package:flutter/material.dart';

class CoverImageAddModel extends FlutterFlowModel<CoverImageAddWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Member Cover Photo)] action in Button widget.
  ApiCallResponse? coverPicAdded;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
